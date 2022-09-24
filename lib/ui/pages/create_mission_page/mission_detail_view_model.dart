import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'mission_detail_view_model.freezed.dart';

final missionDetailProvider = StateNotifierProvider.autoDispose<
    MissionDetailViewModel,
    MissionDetailState>((ref) => MissionDetailViewModel());

@freezed
class MissionDetailState with _$MissionDetailState {
  factory MissionDetailState(
      {required TextEditingController missionDetailController,
      String? missionDetail}) = _MissionDetailState;
}

class MissionDetailViewModel extends StateNotifier<MissionDetailState> {
  MissionDetailViewModel()
      : super(MissionDetailState(
            missionDetail: null,
            missionDetailController: TextEditingController(text: null))) {
    state.missionDetailController.selection = TextSelection.fromPosition(
        TextPosition(offset: state.missionDetailController.text.length));
  }

  void editMissionDetailText(String text) {
    final currentState = state;
    state = currentState.copyWith(missionDetail: text);
  }
}
