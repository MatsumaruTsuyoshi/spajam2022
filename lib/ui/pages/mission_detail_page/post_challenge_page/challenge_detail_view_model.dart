import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'challenge_detail_view_model.freezed.dart';

final challengeDetailViewModelProvider = StateNotifierProvider.autoDispose<
    ChallengeDetailViewModel,
    ChallengeDetailState>((ref) => ChallengeDetailViewModel());

@freezed
class ChallengeDetailState with _$ChallengeDetailState {
  factory ChallengeDetailState(
      {required TextEditingController challengeDetailController,
      String? challengeDetail}) = _ChallengeDetailState;
}

class ChallengeDetailViewModel extends StateNotifier<ChallengeDetailState> {
  ChallengeDetailViewModel()
      : super(ChallengeDetailState(
            challengeDetail: null,
            challengeDetailController: TextEditingController(text: null))) {
    state.challengeDetailController.selection = TextSelection.fromPosition(
        TextPosition(offset: state.challengeDetailController.text.length));
  }

  void editChallengeDetailText(String text) {
    final currentState = state;
    state = currentState.copyWith(challengeDetail: text);
  }
}
