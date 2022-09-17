// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SamplePageState {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SamplePageStateCopyWith<SamplePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SamplePageStateCopyWith<$Res> {
  factory $SamplePageStateCopyWith(
          SamplePageState value, $Res Function(SamplePageState) then) =
      _$SamplePageStateCopyWithImpl<$Res>;
  $Res call({int counter});
}

/// @nodoc
class _$SamplePageStateCopyWithImpl<$Res>
    implements $SamplePageStateCopyWith<$Res> {
  _$SamplePageStateCopyWithImpl(this._value, this._then);

  final SamplePageState _value;
  // ignore: unused_field
  final $Res Function(SamplePageState) _then;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SamplePageStateCopyWith<$Res>
    implements $SamplePageStateCopyWith<$Res> {
  factory _$$_SamplePageStateCopyWith(
          _$_SamplePageState value, $Res Function(_$_SamplePageState) then) =
      __$$_SamplePageStateCopyWithImpl<$Res>;
  @override
  $Res call({int counter});
}

/// @nodoc
class __$$_SamplePageStateCopyWithImpl<$Res>
    extends _$SamplePageStateCopyWithImpl<$Res>
    implements _$$_SamplePageStateCopyWith<$Res> {
  __$$_SamplePageStateCopyWithImpl(
      _$_SamplePageState _value, $Res Function(_$_SamplePageState) _then)
      : super(_value, (v) => _then(v as _$_SamplePageState));

  @override
  _$_SamplePageState get _value => super._value as _$_SamplePageState;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_$_SamplePageState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SamplePageState implements _SamplePageState {
  _$_SamplePageState({this.counter = 0});

  @override
  @JsonKey()
  final int counter;

  @override
  String toString() {
    return 'SamplePageState(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SamplePageState &&
            const DeepCollectionEquality().equals(other.counter, counter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(counter));

  @JsonKey(ignore: true)
  @override
  _$$_SamplePageStateCopyWith<_$_SamplePageState> get copyWith =>
      __$$_SamplePageStateCopyWithImpl<_$_SamplePageState>(this, _$identity);
}

abstract class _SamplePageState implements SamplePageState {
  factory _SamplePageState({final int counter}) = _$_SamplePageState;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_SamplePageStateCopyWith<_$_SamplePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
