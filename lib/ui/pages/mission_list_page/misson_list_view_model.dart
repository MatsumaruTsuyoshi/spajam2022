import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/model/mission.dart';

part 'misson_list_view_model.freezed.dart';

final missionListPageViewModelProvider = StateNotifierProvider.autoDispose<
    MissionListPageViewModel,
    MissionListPageState>((ref) => MissionListPageViewModel());

@freezed
class MissionListPageState with _$MissionListPageState {
  factory MissionListPageState({@Default(<Mission>[]) List<Mission> missions}) =
      _MissionListPageState;
}

class MissionListPageViewModel extends StateNotifier<MissionListPageState> {
  MissionListPageViewModel() : super(MissionListPageState()) {
    setUp();
  }

  void setUp() {
    final Stream<QuerySnapshot> missionsStream =
        FirebaseFirestore.instance.collection('missions').snapshots();
    missionsStream.listen((event) {
      state = state.copyWith(
          missions: event.docs
              .map((e) => Mission.fromJson(e.data() as Map<String, dynamic>))
              .toList());
    });
    // state = state.copyWith(missions: [
    //   Mission(
    //     missionId: 1,
    //     missionTitle: "八つ橋を食べよ",
    //     missionIsClear: false,
    //     missionIsDone: false,
    //     missionDetail: "detail",
    //     missionImagePath: "https://www.8284.co.jp/imgex.cgi?p=3&f=2.jpeg",
    //   ),
    //   Mission(
    //       missionId: 2,
    //       missionTitle: "鴨肉を食べよ",
    //       missionIsClear: true,
    //       missionIsDone: true,
    //       missionDetail: "complete detail",
    //       missionImagePath:
    //           "https://cdn.pixabay.com/photo/2015/12/12/19/46/smoked-duck-1090027_1280.jpg"),
    //   Mission(
    //       missionId: 3,
    //       missionTitle: "寺来た",
    //       missionIsClear: false,
    //       missionIsDone: true,
    //       missionDetail: "complete review wait",
    //       missionImagePath:
    //           "https://cdn.pixabay.com/photo/2016/06/18/03/59/ginkaku-ji-temple-1464542_1280.jpg"),
    // ]);
  }
}
