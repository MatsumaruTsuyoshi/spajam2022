// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MissionDetailState {
  TextEditingController get missionDetailController =>
      throw _privateConstructorUsedError;
  String? get missionDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MissionDetailStateCopyWith<MissionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionDetailStateCopyWith<$Res> {
  factory $MissionDetailStateCopyWith(
          MissionDetailState value, $Res Function(MissionDetailState) then) =
      _$MissionDetailStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController missionDetailController, String? missionDetail});
}

/// @nodoc
class _$MissionDetailStateCopyWithImpl<$Res>
    implements $MissionDetailStateCopyWith<$Res> {
  _$MissionDetailStateCopyWithImpl(this._value, this._then);

  final MissionDetailState _value;
  // ignore: unused_field
  final $Res Function(MissionDetailState) _then;

  @override
  $Res call({
    Object? missionDetailController = freezed,
    Object? missionDetail = freezed,
  }) {
    return _then(_value.copyWith(
      missionDetailController: missionDetailController == freezed
          ? _value.missionDetailController
          : missionDetailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      missionDetail: missionDetail == freezed
          ? _value.missionDetail
          : missionDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MissionDetailStateCopyWith<$Res>
    implements $MissionDetailStateCopyWith<$Res> {
  factory _$$_MissionDetailStateCopyWith(_$_MissionDetailState value,
          $Res Function(_$_MissionDetailState) then) =
      __$$_MissionDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController missionDetailController, String? missionDetail});
}

/// @nodoc
class __$$_MissionDetailStateCopyWithImpl<$Res>
    extends _$MissionDetailStateCopyWithImpl<$Res>
    implements _$$_MissionDetailStateCopyWith<$Res> {
  __$$_MissionDetailStateCopyWithImpl(
      _$_MissionDetailState _value, $Res Function(_$_MissionDetailState) _then)
      : super(_value, (v) => _then(v as _$_MissionDetailState));

  @override
  _$_MissionDetailState get _value => super._value as _$_MissionDetailState;

  @override
  $Res call({
    Object? missionDetailController = freezed,
    Object? missionDetail = freezed,
  }) {
    return _then(_$_MissionDetailState(
      missionDetailController: missionDetailController == freezed
          ? _value.missionDetailController
          : missionDetailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      missionDetail: missionDetail == freezed
          ? _value.missionDetail
          : missionDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MissionDetailState implements _MissionDetailState {
  _$_MissionDetailState(
      {required this.missionDetailController, this.missionDetail});

  @override
  final TextEditingController missionDetailController;
  @override
  final String? missionDetail;

  @override
  String toString() {
    return 'MissionDetailState(missionDetailController: $missionDetailController, missionDetail: $missionDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MissionDetailState &&
            const DeepCollectionEquality().equals(
                other.missionDetailController, missionDetailController) &&
            const DeepCollectionEquality()
                .equals(other.missionDetail, missionDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(missionDetailController),
      const DeepCollectionEquality().hash(missionDetail));

  @JsonKey(ignore: true)
  @override
  _$$_MissionDetailStateCopyWith<_$_MissionDetailState> get copyWith =>
      __$$_MissionDetailStateCopyWithImpl<_$_MissionDetailState>(
          this, _$identity);
}

abstract class _MissionDetailState implements MissionDetailState {
  factory _MissionDetailState(
      {required final TextEditingController missionDetailController,
      final String? missionDetail}) = _$_MissionDetailState;

  @override
  TextEditingController get missionDetailController;
  @override
  String? get missionDetail;
  @override
  @JsonKey(ignore: true)
  _$$_MissionDetailStateCopyWith<_$_MissionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
