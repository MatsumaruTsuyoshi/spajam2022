// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission_image_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MissionImageState {
  XFile? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MissionImageStateCopyWith<MissionImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionImageStateCopyWith<$Res> {
  factory $MissionImageStateCopyWith(
          MissionImageState value, $Res Function(MissionImageState) then) =
      _$MissionImageStateCopyWithImpl<$Res>;
  $Res call({XFile? imageFile});
}

/// @nodoc
class _$MissionImageStateCopyWithImpl<$Res>
    implements $MissionImageStateCopyWith<$Res> {
  _$MissionImageStateCopyWithImpl(this._value, this._then);

  final MissionImageState _value;
  // ignore: unused_field
  final $Res Function(MissionImageState) _then;

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
abstract class _$$_MissionImageStateCopyWith<$Res>
    implements $MissionImageStateCopyWith<$Res> {
  factory _$$_MissionImageStateCopyWith(_$_MissionImageState value,
          $Res Function(_$_MissionImageState) then) =
      __$$_MissionImageStateCopyWithImpl<$Res>;
  @override
  $Res call({XFile? imageFile});
}

/// @nodoc
class __$$_MissionImageStateCopyWithImpl<$Res>
    extends _$MissionImageStateCopyWithImpl<$Res>
    implements _$$_MissionImageStateCopyWith<$Res> {
  __$$_MissionImageStateCopyWithImpl(
      _$_MissionImageState _value, $Res Function(_$_MissionImageState) _then)
      : super(_value, (v) => _then(v as _$_MissionImageState));

  @override
  _$_MissionImageState get _value => super._value as _$_MissionImageState;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_$_MissionImageState(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_MissionImageState implements _MissionImageState {
  _$_MissionImageState({this.imageFile});

  @override
  final XFile? imageFile;

  @override
  String toString() {
    return 'MissionImageState(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MissionImageState &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  _$$_MissionImageStateCopyWith<_$_MissionImageState> get copyWith =>
      __$$_MissionImageStateCopyWithImpl<_$_MissionImageState>(
          this, _$identity);
}

abstract class _MissionImageState implements MissionImageState {
  factory _MissionImageState({final XFile? imageFile}) = _$_MissionImageState;

  @override
  XFile? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_MissionImageStateCopyWith<_$_MissionImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
