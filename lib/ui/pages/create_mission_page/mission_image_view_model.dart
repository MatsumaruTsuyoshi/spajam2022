import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'mission_image_view_model.freezed.dart';

final missionImageProvider =
    StateNotifierProvider.autoDispose<MissionImageViewModel, MissionImageState>(
        (ref) => MissionImageViewModel());

@freezed
class MissionImageState with _$MissionImageState {
  factory MissionImageState({XFile? imageFile}) = _MissionImageState;
}

class MissionImageViewModel extends StateNotifier<MissionImageState> {
  MissionImageViewModel() : super(MissionImageState(imageFile: null));

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
