// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission_title_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MissionTitleState {
  TextEditingController get missionTitleController =>
      throw _privateConstructorUsedError;
  String? get missionTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MissionTitleStateCopyWith<MissionTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionTitleStateCopyWith<$Res> {
  factory $MissionTitleStateCopyWith(
          MissionTitleState value, $Res Function(MissionTitleState) then) =
      _$MissionTitleStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController missionTitleController, String? missionTitle});
}

/// @nodoc
class _$MissionTitleStateCopyWithImpl<$Res>
    implements $MissionTitleStateCopyWith<$Res> {
  _$MissionTitleStateCopyWithImpl(this._value, this._then);

  final MissionTitleState _value;
  // ignore: unused_field
  final $Res Function(MissionTitleState) _then;

  @override
  $Res call({
    Object? missionTitleController = freezed,
    Object? missionTitle = freezed,
  }) {
    return _then(_value.copyWith(
      missionTitleController: missionTitleController == freezed
          ? _value.missionTitleController
          : missionTitleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      missionTitle: missionTitle == freezed
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MissionTitleStateCopyWith<$Res>
    implements $MissionTitleStateCopyWith<$Res> {
  factory _$$_MissionTitleStateCopyWith(_$_MissionTitleState value,
          $Res Function(_$_MissionTitleState) then) =
      __$$_MissionTitleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController missionTitleController, String? missionTitle});
}

/// @nodoc
class __$$_MissionTitleStateCopyWithImpl<$Res>
    extends _$MissionTitleStateCopyWithImpl<$Res>
    implements _$$_MissionTitleStateCopyWith<$Res> {
  __$$_MissionTitleStateCopyWithImpl(
      _$_MissionTitleState _value, $Res Function(_$_MissionTitleState) _then)
      : super(_value, (v) => _then(v as _$_MissionTitleState));

  @override
  _$_MissionTitleState get _value => super._value as _$_MissionTitleState;

  @override
  $Res call({
    Object? missionTitleController = freezed,
    Object? missionTitle = freezed,
  }) {
    return _then(_$_MissionTitleState(
      missionTitleController: missionTitleController == freezed
          ? _value.missionTitleController
          : missionTitleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      missionTitle: missionTitle == freezed
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MissionTitleState implements _MissionTitleState {
  _$_MissionTitleState(
      {required this.missionTitleController, this.missionTitle});

  @override
  final TextEditingController missionTitleController;
  @override
  final String? missionTitle;

  @override
  String toString() {
    return 'MissionTitleState(missionTitleController: $missionTitleController, missionTitle: $missionTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MissionTitleState &&
            const DeepCollectionEquality()
                .equals(other.missionTitleController, missionTitleController) &&
            const DeepCollectionEquality()
                .equals(other.missionTitle, missionTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(missionTitleController),
      const DeepCollectionEquality().hash(missionTitle));

  @JsonKey(ignore: true)
  @override
  _$$_MissionTitleStateCopyWith<_$_MissionTitleState> get copyWith =>
      __$$_MissionTitleStateCopyWithImpl<_$_MissionTitleState>(
          this, _$identity);
}

abstract class _MissionTitleState implements MissionTitleState {
  factory _MissionTitleState(
      {required final TextEditingController missionTitleController,
      final String? missionTitle}) = _$_MissionTitleState;

  @override
  TextEditingController get missionTitleController;
  @override
  String? get missionTitle;
  @override
  @JsonKey(ignore: true)
  _$$_MissionTitleStateCopyWith<_$_MissionTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}
