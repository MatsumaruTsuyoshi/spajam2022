// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mission _$$_MissionFromJson(Map<String, dynamic> json) => _$_Mission(
      missionId: json['mission_id'] as String,
      missionTitle: json['mission_title'] as String,
      missionIsClear: json['mission_is_clear'] as bool,
      missionIsDone: json['mission_is_done'] as bool,
      missionDetail: json['mission_detail'] as String,
      missionImagePath: json['mission_image_path'] as String,
      challengePosts: (json['challenge_posts'] as List<dynamic>)
          .map((e) => ChallengePost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MissionToJson(_$_Mission instance) =>
    <String, dynamic>{
      'mission_id': instance.missionId,
      'mission_title': instance.missionTitle,
      'mission_is_clear': instance.missionIsClear,
      'mission_is_done': instance.missionIsDone,
      'mission_detail': instance.missionDetail,
      'mission_image_path': instance.missionImagePath,
      'challenge_posts':
          instance.challengePosts.map((e) => e.toJson()).toList(),
    };
