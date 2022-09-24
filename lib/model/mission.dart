import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spajam2022/model/challenge_post.dart';

part 'mission.freezed.dart';

part 'mission.g.dart';

@freezed
class Mission with _$Mission {
  factory Mission({
    required String missionId,
    required String missionTitle,
    required bool missionIsClear,
    required bool missionIsDone,
    required String missionDetail,
    required String missionImagePath,
    List<ChallengePost>? challengePosts,
  }) = _Mission;

  const Mission._();

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
}
