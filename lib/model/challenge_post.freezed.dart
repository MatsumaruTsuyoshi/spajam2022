// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'challenge_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengePost _$ChallengePostFromJson(Map<String, dynamic> json) {
  return _ChallengePost.fromJson(json);
}

/// @nodoc
mixin _$ChallengePost {
  String get challengeDetail => throw _privateConstructorUsedError;
  String? get challengeImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengePostCopyWith<ChallengePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengePostCopyWith<$Res> {
  factory $ChallengePostCopyWith(
          ChallengePost value, $Res Function(ChallengePost) then) =
      _$ChallengePostCopyWithImpl<$Res>;
  $Res call({String challengeDetail, String? challengeImage});
}

/// @nodoc
class _$ChallengePostCopyWithImpl<$Res>
    implements $ChallengePostCopyWith<$Res> {
  _$ChallengePostCopyWithImpl(this._value, this._then);

  final ChallengePost _value;
  // ignore: unused_field
  final $Res Function(ChallengePost) _then;

  @override
  $Res call({
    Object? challengeDetail = freezed,
    Object? challengeImage = freezed,
  }) {
    return _then(_value.copyWith(
      challengeDetail: challengeDetail == freezed
          ? _value.challengeDetail
          : challengeDetail // ignore: cast_nullable_to_non_nullable
              as String,
      challengeImage: challengeImage == freezed
          ? _value.challengeImage
          : challengeImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ChallengePostCopyWith<$Res>
    implements $ChallengePostCopyWith<$Res> {
  factory _$$_ChallengePostCopyWith(
          _$_ChallengePost value, $Res Function(_$_ChallengePost) then) =
      __$$_ChallengePostCopyWithImpl<$Res>;
  @override
  $Res call({String challengeDetail, String? challengeImage});
}

/// @nodoc
class __$$_ChallengePostCopyWithImpl<$Res>
    extends _$ChallengePostCopyWithImpl<$Res>
    implements _$$_ChallengePostCopyWith<$Res> {
  __$$_ChallengePostCopyWithImpl(
      _$_ChallengePost _value, $Res Function(_$_ChallengePost) _then)
      : super(_value, (v) => _then(v as _$_ChallengePost));

  @override
  _$_ChallengePost get _value => super._value as _$_ChallengePost;

  @override
  $Res call({
    Object? challengeDetail = freezed,
    Object? challengeImage = freezed,
  }) {
    return _then(_$_ChallengePost(
      challengeDetail: challengeDetail == freezed
          ? _value.challengeDetail
          : challengeDetail // ignore: cast_nullable_to_non_nullable
              as String,
      challengeImage: challengeImage == freezed
          ? _value.challengeImage
          : challengeImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChallengePost extends _ChallengePost {
  _$_ChallengePost({required this.challengeDetail, this.challengeImage})
      : super._();

  factory _$_ChallengePost.fromJson(Map<String, dynamic> json) =>
      _$$_ChallengePostFromJson(json);

  @override
  final String challengeDetail;
  @override
  final String? challengeImage;

  @override
  String toString() {
    return 'ChallengePost(challengeDetail: $challengeDetail, challengeImage: $challengeImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengePost &&
            const DeepCollectionEquality()
                .equals(other.challengeDetail, challengeDetail) &&
            const DeepCollectionEquality()
                .equals(other.challengeImage, challengeImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(challengeDetail),
      const DeepCollectionEquality().hash(challengeImage));

  @JsonKey(ignore: true)
  @override
  _$$_ChallengePostCopyWith<_$_ChallengePost> get copyWith =>
      __$$_ChallengePostCopyWithImpl<_$_ChallengePost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChallengePostToJson(
      this,
    );
  }
}

abstract class _ChallengePost extends ChallengePost {
  factory _ChallengePost(
      {required final String challengeDetail,
      final String? challengeImage}) = _$_ChallengePost;
  _ChallengePost._() : super._();

  factory _ChallengePost.fromJson(Map<String, dynamic> json) =
      _$_ChallengePost.fromJson;

  @override
  String get challengeDetail;
  @override
  String? get challengeImage;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengePostCopyWith<_$_ChallengePost> get copyWith =>
      throw _privateConstructorUsedError;
}
