import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_post.freezed.dart';

part 'challenge_post.g.dart';

@freezed
class ChallengePost with _$ChallengePost {
  factory ChallengePost(
      {required String challengeDetail,
      String? challengeImage}) = _ChallengePost;

  const ChallengePost._();

  factory ChallengePost.fromJson(Map<String, dynamic> json) =>
      _$ChallengePostFromJson(json);
}
