import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'sample_page_view_model.freezed.dart';

final samplePageViewModelProvider =
    StateNotifierProvider.autoDispose<SamplePageViewModel, SamplePageState>(
        (ref) => SamplePageViewModel());

@freezed
class SamplePageState with _$SamplePageState {
  factory SamplePageState({@Default(0) int counter}) = _SamplePageState;
}

class SamplePageViewModel extends StateNotifier<SamplePageState> {
  SamplePageViewModel() : super(SamplePageState());

  void countUp() {
    final currentState = state;
    final currentCount = currentState.counter;
    state = currentState.copyWith(counter: currentCount + 1);
  }

  void countDown() {
    final currentState = state;
    final currentCount = currentState.counter;

    if (currentCount > 0) {
      state = currentState.copyWith(counter: currentCount - 1);
    }
  }
}
