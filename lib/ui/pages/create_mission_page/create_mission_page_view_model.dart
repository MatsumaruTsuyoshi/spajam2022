import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'create_mission_page_view_model.freezed.dart';

final createMissionPageViewModelProvider = StateNotifierProvider.autoDispose<
    CreateMissionPageViewModel,
    CreateMissionPageState>((ref) => CreateMissionPageViewModel());

@freezed
class CreateMissionPageState with _$CreateMissionPageState {
  factory CreateMissionPageState(
      {@Default(false) bool isLoading,
      @Default(false) bool isError}) = _CreatePageState;
}

class CreateMissionPageViewModel extends StateNotifier<CreateMissionPageState> {
  CreateMissionPageViewModel() : super(CreateMissionPageState());

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<void> createMission(
      {required String imagePath,
      required String missionTitle,
      required String missionDetail}) async {
    final currentState = state;
    if (currentState.isLoading || currentState.isError) {
      return;
    }

    try {
      state = currentState.copyWith(isLoading: true);

      // いったんmissionの削除・編集はできない仕様にする
      final documentReference = firestore.collection('missions').doc().id;

      final imageUrl =
          await postImage(missionDocId: documentReference, imagePath: imagePath)
              .then((ref) async {
        return await getImageUrl(
            missionDocId: documentReference, imagePath: imagePath);
      });

      await firestore
          .collection('missions')
          .doc(documentReference)
          .set(<String, dynamic>{
        'mission_id': documentReference,
        'mission_title': missionTitle,
        'mission_is_clear': false,
        'mission_is_done': false,
        'mission_detail': missionDetail,
        'mission_image_path': imageUrl,
        'created_at': DateTime.now(),
        'updated_at': DateTime.now(),
        'challenge_posts': [],
      });

      state = currentState.copyWith(isLoading: false);
    } catch (e) {
      state = currentState.copyWith(isLoading: false, isError: false);
    }
  }

  String defineStorageReference(String missionDocId, String? fileName) {
    if (fileName == null) {
      return 'missions/$missionDocId/images';
    } else {
      return 'missions/$missionDocId/images/$fileName.png';
    }
  }

  Future<String?> postImage(
      {required String missionDocId, required String imagePath}) async {
    try {
      final ref = defineStorageReference(missionDocId, missionDocId);
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
      final ref = defineStorageReference(missionDocId, missionDocId);
      final url = await storage.ref().child(ref).getDownloadURL();
      return url;
    } catch (e) {
      return null;
      // 余裕があったらエラーハンドリング
    }
  }
}
