// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_challenge_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostChallengeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostChallengeStateCopyWith<PostChallengeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostChallengeStateCopyWith<$Res> {
  factory $PostChallengeStateCopyWith(
          PostChallengeState value, $Res Function(PostChallengeState) then) =
      _$PostChallengeStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class _$PostChallengeStateCopyWithImpl<$Res>
    implements $PostChallengeStateCopyWith<$Res> {
  _$PostChallengeStateCopyWithImpl(this._value, this._then);

  final PostChallengeState _value;
  // ignore: unused_field
  final $Res Function(PostChallengeState) _then;

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
abstract class _$$_PostChallengeStateCopyWith<$Res>
    implements $PostChallengeStateCopyWith<$Res> {
  factory _$$_PostChallengeStateCopyWith(_$_PostChallengeState value,
          $Res Function(_$_PostChallengeState) then) =
      __$$_PostChallengeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class __$$_PostChallengeStateCopyWithImpl<$Res>
    extends _$PostChallengeStateCopyWithImpl<$Res>
    implements _$$_PostChallengeStateCopyWith<$Res> {
  __$$_PostChallengeStateCopyWithImpl(
      _$_PostChallengeState _value, $Res Function(_$_PostChallengeState) _then)
      : super(_value, (v) => _then(v as _$_PostChallengeState));

  @override
  _$_PostChallengeState get _value => super._value as _$_PostChallengeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_PostChallengeState(
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

class _$_PostChallengeState implements _PostChallengeState {
  _$_PostChallengeState({this.isLoading = false, this.isError = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'PostChallengeState(isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostChallengeState &&
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
  _$$_PostChallengeStateCopyWith<_$_PostChallengeState> get copyWith =>
      __$$_PostChallengeStateCopyWithImpl<_$_PostChallengeState>(
          this, _$identity);
}

abstract class _PostChallengeState implements PostChallengeState {
  factory _PostChallengeState({final bool isLoading, final bool isError}) =
      _$_PostChallengeState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_PostChallengeStateCopyWith<_$_PostChallengeState> get copyWith =>
      throw _privateConstructorUsedError;
}
