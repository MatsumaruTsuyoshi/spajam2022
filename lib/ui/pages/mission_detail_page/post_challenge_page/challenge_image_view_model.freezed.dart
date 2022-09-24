// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'challenge_image_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChallengeImageState {
  XFile? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChallengeImageStateCopyWith<ChallengeImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeImageStateCopyWith<$Res> {
  factory $ChallengeImageStateCopyWith(
          ChallengeImageState value, $Res Function(ChallengeImageState) then) =
      _$ChallengeImageStateCopyWithImpl<$Res>;
  $Res call({XFile? imageFile});
}

/// @nodoc
class _$ChallengeImageStateCopyWithImpl<$Res>
    implements $ChallengeImageStateCopyWith<$Res> {
  _$ChallengeImageStateCopyWithImpl(this._value, this._then);

  final ChallengeImageState _value;
  // ignore: unused_field
  final $Res Function(ChallengeImageState) _then;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
abstract class _$$_ChallengeImageStateCopyWith<$Res>
    implements $ChallengeImageStateCopyWith<$Res> {
  factory _$$_ChallengeImageStateCopyWith(_$_ChallengeImageState value,
          $Res Function(_$_ChallengeImageState) then) =
      __$$_ChallengeImageStateCopyWithImpl<$Res>;
  @override
  $Res call({XFile? imageFile});
}

/// @nodoc
class __$$_ChallengeImageStateCopyWithImpl<$Res>
    extends _$ChallengeImageStateCopyWithImpl<$Res>
    implements _$$_ChallengeImageStateCopyWith<$Res> {
  __$$_ChallengeImageStateCopyWithImpl(_$_ChallengeImageState _value,
      $Res Function(_$_ChallengeImageState) _then)
      : super(_value, (v) => _then(v as _$_ChallengeImageState));

  @override
  _$_ChallengeImageState get _value => super._value as _$_ChallengeImageState;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_$_ChallengeImageState(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_ChallengeImageState implements _ChallengeImageState {
  _$_ChallengeImageState({this.imageFile});

  @override
  final XFile? imageFile;

  @override
  String toString() {
    return 'ChallengeImageState(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengeImageState &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  _$$_ChallengeImageStateCopyWith<_$_ChallengeImageState> get copyWith =>
      __$$_ChallengeImageStateCopyWithImpl<_$_ChallengeImageState>(
          this, _$identity);
}

abstract class _ChallengeImageState implements ChallengeImageState {
  factory _ChallengeImageState({final XFile? imageFile}) =
      _$_ChallengeImageState;

  @override
  XFile? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengeImageStateCopyWith<_$_ChallengeImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
