// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'challenge_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChallengeDetailState {
  TextEditingController get challengeDetailController =>
      throw _privateConstructorUsedError;
  String? get challengeDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChallengeDetailStateCopyWith<ChallengeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeDetailStateCopyWith<$Res> {
  factory $ChallengeDetailStateCopyWith(ChallengeDetailState value,
          $Res Function(ChallengeDetailState) then) =
      _$ChallengeDetailStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController challengeDetailController,
      String? challengeDetail});
}

/// @nodoc
class _$ChallengeDetailStateCopyWithImpl<$Res>
    implements $ChallengeDetailStateCopyWith<$Res> {
  _$ChallengeDetailStateCopyWithImpl(this._value, this._then);

  final ChallengeDetailState _value;
  // ignore: unused_field
  final $Res Function(ChallengeDetailState) _then;

  @override
  $Res call({
    Object? challengeDetailController = freezed,
    Object? challengeDetail = freezed,
  }) {
    return _then(_value.copyWith(
      challengeDetailController: challengeDetailController == freezed
          ? _value.challengeDetailController
          : challengeDetailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      challengeDetail: challengeDetail == freezed
          ? _value.challengeDetail
          : challengeDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ChallengeDetailStateCopyWith<$Res>
    implements $ChallengeDetailStateCopyWith<$Res> {
  factory _$$_ChallengeDetailStateCopyWith(_$_ChallengeDetailState value,
          $Res Function(_$_ChallengeDetailState) then) =
      __$$_ChallengeDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController challengeDetailController,
      String? challengeDetail});
}

/// @nodoc
class __$$_ChallengeDetailStateCopyWithImpl<$Res>
    extends _$ChallengeDetailStateCopyWithImpl<$Res>
    implements _$$_ChallengeDetailStateCopyWith<$Res> {
  __$$_ChallengeDetailStateCopyWithImpl(_$_ChallengeDetailState _value,
      $Res Function(_$_ChallengeDetailState) _then)
      : super(_value, (v) => _then(v as _$_ChallengeDetailState));

  @override
  _$_ChallengeDetailState get _value => super._value as _$_ChallengeDetailState;

  @override
  $Res call({
    Object? challengeDetailController = freezed,
    Object? challengeDetail = freezed,
  }) {
    return _then(_$_ChallengeDetailState(
      challengeDetailController: challengeDetailController == freezed
          ? _value.challengeDetailController
          : challengeDetailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      challengeDetail: challengeDetail == freezed
          ? _value.challengeDetail
          : challengeDetail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChallengeDetailState implements _ChallengeDetailState {
  _$_ChallengeDetailState(
      {required this.challengeDetailController, this.challengeDetail});

  @override
  final TextEditingController challengeDetailController;
  @override
  final String? challengeDetail;

  @override
  String toString() {
    return 'ChallengeDetailState(challengeDetailController: $challengeDetailController, challengeDetail: $challengeDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengeDetailState &&
            const DeepCollectionEquality().equals(
                other.challengeDetailController, challengeDetailController) &&
            const DeepCollectionEquality()
                .equals(other.challengeDetail, challengeDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(challengeDetailController),
      const DeepCollectionEquality().hash(challengeDetail));

  @JsonKey(ignore: true)
  @override
  _$$_ChallengeDetailStateCopyWith<_$_ChallengeDetailState> get copyWith =>
      __$$_ChallengeDetailStateCopyWithImpl<_$_ChallengeDetailState>(
          this, _$identity);
}

abstract class _ChallengeDetailState implements ChallengeDetailState {
  factory _ChallengeDetailState(
      {required final TextEditingController challengeDetailController,
      final String? challengeDetail}) = _$_ChallengeDetailState;

  @override
  TextEditingController get challengeDetailController;
  @override
  String? get challengeDetail;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengeDetailStateCopyWith<_$_ChallengeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
