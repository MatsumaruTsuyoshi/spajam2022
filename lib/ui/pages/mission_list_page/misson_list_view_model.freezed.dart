// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'misson_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MissionListPageState {
  List<Mission> get missions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MissionListPageStateCopyWith<MissionListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionListPageStateCopyWith<$Res> {
  factory $MissionListPageStateCopyWith(MissionListPageState value,
          $Res Function(MissionListPageState) then) =
      _$MissionListPageStateCopyWithImpl<$Res>;
  $Res call({List<Mission> missions});
}

/// @nodoc
class _$MissionListPageStateCopyWithImpl<$Res>
    implements $MissionListPageStateCopyWith<$Res> {
  _$MissionListPageStateCopyWithImpl(this._value, this._then);

  final MissionListPageState _value;
  // ignore: unused_field
  final $Res Function(MissionListPageState) _then;

  @override
  $Res call({
    Object? missions = freezed,
  }) {
    return _then(_value.copyWith(
      missions: missions == freezed
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc
abstract class _$$_MissionListPageStateCopyWith<$Res>
    implements $MissionListPageStateCopyWith<$Res> {
  factory _$$_MissionListPageStateCopyWith(_$_MissionListPageState value,
          $Res Function(_$_MissionListPageState) then) =
      __$$_MissionListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Mission> missions});
}

/// @nodoc
class __$$_MissionListPageStateCopyWithImpl<$Res>
    extends _$MissionListPageStateCopyWithImpl<$Res>
    implements _$$_MissionListPageStateCopyWith<$Res> {
  __$$_MissionListPageStateCopyWithImpl(_$_MissionListPageState _value,
      $Res Function(_$_MissionListPageState) _then)
      : super(_value, (v) => _then(v as _$_MissionListPageState));

  @override
  _$_MissionListPageState get _value => super._value as _$_MissionListPageState;

  @override
  $Res call({
    Object? missions = freezed,
  }) {
    return _then(_$_MissionListPageState(
      missions: missions == freezed
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc

class _$_MissionListPageState implements _MissionListPageState {
  _$_MissionListPageState({final List<Mission> missions = const <Mission>[]})
      : _missions = missions;

  final List<Mission> _missions;
  @override
  @JsonKey()
  List<Mission> get missions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  String toString() {
    return 'MissionListPageState(missions: $missions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MissionListPageState &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_missions));

  @JsonKey(ignore: true)
  @override
  _$$_MissionListPageStateCopyWith<_$_MissionListPageState> get copyWith =>
      __$$_MissionListPageStateCopyWithImpl<_$_MissionListPageState>(
          this, _$identity);
}

abstract class _MissionListPageState implements MissionListPageState {
  factory _MissionListPageState({final List<Mission> missions}) =
      _$_MissionListPageState;

  @override
  List<Mission> get missions;
  @override
  @JsonKey(ignore: true)
  _$$_MissionListPageStateCopyWith<_$_MissionListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
