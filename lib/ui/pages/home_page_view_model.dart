import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_view_model.freezed.dart';

final homePageViewModelProvider =
    StateNotifierProvider.autoDispose<HomePageViewModel, HomePageState>(
        (ref) => HomePageViewModel());

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({@Default(0) int counter}) = _HomePageState;
}

class HomePageViewModel extends StateNotifier<HomePageState> {
  HomePageViewModel() : super(HomePageState());

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
