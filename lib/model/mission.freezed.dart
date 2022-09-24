// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
mixin _$Mission {
  String get missionId => throw _privateConstructorUsedError;
  String get missionTitle => throw _privateConstructorUsedError;
  bool get missionIsClear => throw _privateConstructorUsedError;
  bool get missionIsDone => throw _privateConstructorUsedError;
  String get missionDetail => throw _privateConstructorUsedError;
  String get missionImagePath => throw _privateConstructorUsedError;
  List<ChallengePost> get challengePosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res>;
  $Res call(
      {String missionId,
      String missionTitle,
      bool missionIsClear,
      bool missionIsDone,
      String missionDetail,
      String missionImagePath,
      List<ChallengePost> challengePosts});
}

/// @nodoc
class _$MissionCopyWithImpl<$Res> implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  final Mission _value;
  // ignore: unused_field
  final $Res Function(Mission) _then;

  @override
  $Res call({
    Object? missionId = freezed,
    Object? missionTitle = freezed,
    Object? missionIsClear = freezed,
    Object? missionIsDone = freezed,
    Object? missionDetail = freezed,
    Object? missionImagePath = freezed,
    Object? challengePosts = freezed,
  }) {
    return _then(_value.copyWith(
      missionId: missionId == freezed
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as String,
      missionTitle: missionTitle == freezed
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      missionIsClear: missionIsClear == freezed
          ? _value.missionIsClear
          : missionIsClear // ignore: cast_nullable_to_non_nullable
              as bool,
      missionIsDone: missionIsDone == freezed
          ? _value.missionIsDone
          : missionIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      missionDetail: missionDetail == freezed
          ? _value.missionDetail
          : missionDetail // ignore: cast_nullable_to_non_nullable
              as String,
      missionImagePath: missionImagePath == freezed
          ? _value.missionImagePath
          : missionImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      challengePosts: challengePosts == freezed
          ? _value.challengePosts
          : challengePosts // ignore: cast_nullable_to_non_nullable
              as List<ChallengePost>,
    ));
  }
}

/// @nodoc
abstract class _$$_MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$$_MissionCopyWith(
          _$_Mission value, $Res Function(_$_Mission) then) =
      __$$_MissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String missionId,
      String missionTitle,
      bool missionIsClear,
      bool missionIsDone,
      String missionDetail,
      String missionImagePath,
      List<ChallengePost> challengePosts});
}

/// @nodoc
class __$$_MissionCopyWithImpl<$Res> extends _$MissionCopyWithImpl<$Res>
    implements _$$_MissionCopyWith<$Res> {
  __$$_MissionCopyWithImpl(_$_Mission _value, $Res Function(_$_Mission) _then)
      : super(_value, (v) => _then(v as _$_Mission));

  @override
  _$_Mission get _value => super._value as _$_Mission;

  @override
  $Res call({
    Object? missionId = freezed,
    Object? missionTitle = freezed,
    Object? missionIsClear = freezed,
    Object? missionIsDone = freezed,
    Object? missionDetail = freezed,
    Object? missionImagePath = freezed,
    Object? challengePosts = freezed,
  }) {
    return _then(_$_Mission(
      missionId: missionId == freezed
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as String,
      missionTitle: missionTitle == freezed
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      missionIsClear: missionIsClear == freezed
          ? _value.missionIsClear
          : missionIsClear // ignore: cast_nullable_to_non_nullable
              as bool,
      missionIsDone: missionIsDone == freezed
          ? _value.missionIsDone
          : missionIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
      missionDetail: missionDetail == freezed
          ? _value.missionDetail
          : missionDetail // ignore: cast_nullable_to_non_nullable
              as String,
      missionImagePath: missionImagePath == freezed
          ? _value.missionImagePath
          : missionImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      challengePosts: challengePosts == freezed
          ? _value._challengePosts
          : challengePosts // ignore: cast_nullable_to_non_nullable
              as List<ChallengePost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mission extends _Mission {
  _$_Mission(
      {required this.missionId,
      required this.missionTitle,
      required this.missionIsClear,
      required this.missionIsDone,
      required this.missionDetail,
      required this.missionImagePath,
      required final List<ChallengePost> challengePosts})
      : _challengePosts = challengePosts,
        super._();

  factory _$_Mission.fromJson(Map<String, dynamic> json) =>
      _$$_MissionFromJson(json);

  @override
  final String missionId;
  @override
  final String missionTitle;
  @override
  final bool missionIsClear;
  @override
  final bool missionIsDone;
  @override
  final String missionDetail;
  @override
  final String missionImagePath;
  final List<ChallengePost> _challengePosts;
  @override
  List<ChallengePost> get challengePosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challengePosts);
  }

  @override
  String toString() {
    return 'Mission(missionId: $missionId, missionTitle: $missionTitle, missionIsClear: $missionIsClear, missionIsDone: $missionIsDone, missionDetail: $missionDetail, missionImagePath: $missionImagePath, challengePosts: $challengePosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mission &&
            const DeepCollectionEquality().equals(other.missionId, missionId) &&
            const DeepCollectionEquality()
                .equals(other.missionTitle, missionTitle) &&
            const DeepCollectionEquality()
                .equals(other.missionIsClear, missionIsClear) &&
            const DeepCollectionEquality()
                .equals(other.missionIsDone, missionIsDone) &&
            const DeepCollectionEquality()
                .equals(other.missionDetail, missionDetail) &&
            const DeepCollectionEquality()
                .equals(other.missionImagePath, missionImagePath) &&
            const DeepCollectionEquality()
                .equals(other._challengePosts, _challengePosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(missionId),
      const DeepCollectionEquality().hash(missionTitle),
      const DeepCollectionEquality().hash(missionIsClear),
      const DeepCollectionEquality().hash(missionIsDone),
      const DeepCollectionEquality().hash(missionDetail),
      const DeepCollectionEquality().hash(missionImagePath),
      const DeepCollectionEquality().hash(_challengePosts));

  @JsonKey(ignore: true)
  @override
  _$$_MissionCopyWith<_$_Mission> get copyWith =>
      __$$_MissionCopyWithImpl<_$_Mission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MissionToJson(
      this,
    );
  }
}

abstract class _Mission extends Mission {
  factory _Mission(
      {required final String missionId,
      required final String missionTitle,
      required final bool missionIsClear,
      required final bool missionIsDone,
      required final String missionDetail,
      required final String missionImagePath,
      required final List<ChallengePost> challengePosts}) = _$_Mission;
  _Mission._() : super._();

  factory _Mission.fromJson(Map<String, dynamic> json) = _$_Mission.fromJson;

  @override
  String get missionId;
  @override
  String get missionTitle;
  @override
  bool get missionIsClear;
  @override
  bool get missionIsDone;
  @override
  String get missionDetail;
  @override
  String get missionImagePath;
  @override
  List<ChallengePost> get challengePosts;
  @override
  @JsonKey(ignore: true)
  _$$_MissionCopyWith<_$_Mission> get copyWith =>
      throw _privateConstructorUsedError;
}
