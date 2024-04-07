// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happiness_level_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HappinessLevelViewModelState {
  HappinessLevelKind? get happinessLevelKind =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HappinessLevelViewModelStateCopyWith<HappinessLevelViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HappinessLevelViewModelStateCopyWith<$Res> {
  factory $HappinessLevelViewModelStateCopyWith(
          HappinessLevelViewModelState value,
          $Res Function(HappinessLevelViewModelState) then) =
      _$HappinessLevelViewModelStateCopyWithImpl<$Res,
          HappinessLevelViewModelState>;
  @useResult
  $Res call({HappinessLevelKind? happinessLevelKind});
}

/// @nodoc
class _$HappinessLevelViewModelStateCopyWithImpl<$Res,
        $Val extends HappinessLevelViewModelState>
    implements $HappinessLevelViewModelStateCopyWith<$Res> {
  _$HappinessLevelViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happinessLevelKind = freezed,
  }) {
    return _then(_value.copyWith(
      happinessLevelKind: freezed == happinessLevelKind
          ? _value.happinessLevelKind
          : happinessLevelKind // ignore: cast_nullable_to_non_nullable
              as HappinessLevelKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HappinessLevelViewModelStateImplCopyWith<$Res>
    implements $HappinessLevelViewModelStateCopyWith<$Res> {
  factory _$$HappinessLevelViewModelStateImplCopyWith(
          _$HappinessLevelViewModelStateImpl value,
          $Res Function(_$HappinessLevelViewModelStateImpl) then) =
      __$$HappinessLevelViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HappinessLevelKind? happinessLevelKind});
}

/// @nodoc
class __$$HappinessLevelViewModelStateImplCopyWithImpl<$Res>
    extends _$HappinessLevelViewModelStateCopyWithImpl<$Res,
        _$HappinessLevelViewModelStateImpl>
    implements _$$HappinessLevelViewModelStateImplCopyWith<$Res> {
  __$$HappinessLevelViewModelStateImplCopyWithImpl(
      _$HappinessLevelViewModelStateImpl _value,
      $Res Function(_$HappinessLevelViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happinessLevelKind = freezed,
  }) {
    return _then(_$HappinessLevelViewModelStateImpl(
      happinessLevelKind: freezed == happinessLevelKind
          ? _value.happinessLevelKind
          : happinessLevelKind // ignore: cast_nullable_to_non_nullable
              as HappinessLevelKind?,
    ));
  }
}

/// @nodoc

class _$HappinessLevelViewModelStateImpl
    implements _HappinessLevelViewModelState {
  const _$HappinessLevelViewModelStateImpl({this.happinessLevelKind = null});

  @override
  @JsonKey()
  final HappinessLevelKind? happinessLevelKind;

  @override
  String toString() {
    return 'HappinessLevelViewModelState(happinessLevelKind: $happinessLevelKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HappinessLevelViewModelStateImpl &&
            (identical(other.happinessLevelKind, happinessLevelKind) ||
                other.happinessLevelKind == happinessLevelKind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, happinessLevelKind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HappinessLevelViewModelStateImplCopyWith<
          _$HappinessLevelViewModelStateImpl>
      get copyWith => __$$HappinessLevelViewModelStateImplCopyWithImpl<
          _$HappinessLevelViewModelStateImpl>(this, _$identity);
}

abstract class _HappinessLevelViewModelState
    implements HappinessLevelViewModelState {
  const factory _HappinessLevelViewModelState(
          {final HappinessLevelKind? happinessLevelKind}) =
      _$HappinessLevelViewModelStateImpl;

  @override
  HappinessLevelKind? get happinessLevelKind;
  @override
  @JsonKey(ignore: true)
  _$$HappinessLevelViewModelStateImplCopyWith<
          _$HappinessLevelViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
