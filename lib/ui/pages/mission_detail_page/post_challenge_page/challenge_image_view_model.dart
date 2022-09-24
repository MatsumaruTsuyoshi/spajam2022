import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'challenge_image_view_model.freezed.dart';

final challengeImageViewModelProvider = StateNotifierProvider.autoDispose<
    ChallengeImageViewModel,
    ChallengeImageState>((ref) => ChallengeImageViewModel());

@freezed
class ChallengeImageState with _$ChallengeImageState {
  factory ChallengeImageState({XFile? imageFile}) = _ChallengeImageState;
}

class ChallengeImageViewModel extends StateNotifier<ChallengeImageState> {
  ChallengeImageViewModel() : super(ChallengeImageState());

  final imagePicker = ImagePicker();

  Future<void> pickImage() async {
    final currentState = state;
    try {
      final pickedFile =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        state = currentState.copyWith(imageFile: pickedFile);
      }
    } catch (e) {
      // 余裕があったらエラーハンドリング入れる
    }
  }
}
