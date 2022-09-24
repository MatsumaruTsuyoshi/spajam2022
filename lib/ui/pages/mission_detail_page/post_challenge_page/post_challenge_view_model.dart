import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/model/challenge_post.dart';

part 'post_challenge_view_model.freezed.dart';

final postChallengeViewModelProvider = StateNotifierProvider.family
    .autoDispose<PostChallengeViewModel, PostChallengeState, String>(
        (ref, missionId) => PostChallengeViewModel(missionId));

@freezed
class PostChallengeState with _$PostChallengeState {
  factory PostChallengeState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _PostChallengeState;
}

class PostChallengeViewModel extends StateNotifier<PostChallengeState> {
  PostChallengeViewModel(this.missionId) : super(PostChallengeState());

  final String missionId;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<void> postChallenge(
      {required String imagePath, required String challengeDetail}) async {
    final currentState = state;
    if (currentState.isLoading || currentState.isError) {
      return;
    }

    try {
      state = currentState.copyWith(isLoading: true);

      final documentReference =
          firestore.collection('missions').doc(missionId).id;

      final imageUrl =
          await postImage(missionDocId: documentReference, imagePath: imagePath)
              .then((ref) async {
        return await getImageUrl(
            missionDocId: documentReference, imagePath: imagePath);
      });

      await firestore
          .collection('missions')
          .doc(documentReference)
          .update(<String, dynamic>{
        'updated_at': DateTime.now(),
        'challenge_posts': FieldValue.arrayUnion([
          ChallengePost(
              challengeDetail: challengeDetail, challengeImage: imageUrl)
        ])
      });

      state = currentState.copyWith(isLoading: false);
    } catch (e) {
      state = currentState.copyWith(isLoading: false, isError: false);
    }
  }

  Future<String> defineStorageReference(String missionDocId) async {
    final ref = 'missions/$missionDocId/images/challenges';
    final storageList = await storage.ref().child(ref).listAll();
    final fileLength = storageList.items.length;
    return '$ref/${fileLength + 1}.png';
  }

  Future<String?> postImage(
      {required String missionDocId, required String imagePath}) async {
    try {
      final ref = await defineStorageReference(missionDocId);
      await storage.ref().child(ref).putFile(File(imagePath));
      return ref;
    } catch (e) {
      return null;
      // 余裕があったらエラーハンドリング
    }
  }

  Future<String?> getImageUrl(
      {required String missionDocId, required String imagePath}) async {
    try {
      final ref = await defineStorageReference(missionDocId);
      final url = await storage.ref().child(ref).getDownloadURL();
      return url;
    } catch (e) {
      return null;
      // 余裕があったらエラーハンドリング
    }
  }
}
