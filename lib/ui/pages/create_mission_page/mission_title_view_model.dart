import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'mission_title_view_model.freezed.dart';

final missionTitleProvider =
    StateNotifierProvider.autoDispose<MissionTitleViewModel, MissionTitleState>(
        (ref) => MissionTitleViewModel());

@freezed
class MissionTitleState with _$MissionTitleState {
  factory MissionTitleState(
      {required TextEditingController missionTitleController,
      String? missionTitle}) = _MissionTitleState;
}

class MissionTitleViewModel extends StateNotifier<MissionTitleState> {
  MissionTitleViewModel()
      : super(MissionTitleState(
            missionTitle: null,
            missionTitleController: TextEditingController(text: null))) {
    state.missionTitleController.selection = TextSelection.fromPosition(
        TextPosition(offset: state.missionTitleController.text.length));
  }

  void editMissionTitle(String text) {
    final currentState = state;
    state = currentState.copyWith(missionTitle: text);
  }
}
