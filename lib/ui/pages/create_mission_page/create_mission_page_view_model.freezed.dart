// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_mission_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateMissionPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMissionPageStateCopyWith<CreateMissionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMissionPageStateCopyWith<$Res> {
  factory $CreateMissionPageStateCopyWith(CreateMissionPageState value,
          $Res Function(CreateMissionPageState) then) =
      _$CreateMissionPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class _$CreateMissionPageStateCopyWithImpl<$Res>
    implements $CreateMissionPageStateCopyWith<$Res> {
  _$CreateMissionPageStateCopyWithImpl(this._value, this._then);

  final CreateMissionPageState _value;
  // ignore: unused_field
  final $Res Function(CreateMissionPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CreatePageStateCopyWith<$Res>
    implements $CreateMissionPageStateCopyWith<$Res> {
  factory _$$_CreatePageStateCopyWith(
          _$_CreatePageState value, $Res Function(_$_CreatePageState) then) =
      __$$_CreatePageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class __$$_CreatePageStateCopyWithImpl<$Res>
    extends _$CreateMissionPageStateCopyWithImpl<$Res>
    implements _$$_CreatePageStateCopyWith<$Res> {
  __$$_CreatePageStateCopyWithImpl(
      _$_CreatePageState _value, $Res Function(_$_CreatePageState) _then)
      : super(_value, (v) => _then(v as _$_CreatePageState));

  @override
  _$_CreatePageState get _value => super._value as _$_CreatePageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_CreatePageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreatePageState implements _CreatePageState {
  _$_CreatePageState({this.isLoading = false, this.isError = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'CreateMissionPageState(isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePageState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_CreatePageStateCopyWith<_$_CreatePageState> get copyWith =>
      __$$_CreatePageStateCopyWithImpl<_$_CreatePageState>(this, _$identity);
}

abstract class _CreatePageState implements CreateMissionPageState {
  factory _CreatePageState({final bool isLoading, final bool isError}) =
      _$_CreatePageState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePageStateCopyWith<_$_CreatePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
