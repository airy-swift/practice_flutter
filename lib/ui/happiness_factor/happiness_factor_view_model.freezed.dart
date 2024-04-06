// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'happiness_factor_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HappinessFactorViewModelState {
  HappinessFactorKind? get happinessFactorKind =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HappinessFactorViewModelStateCopyWith<HappinessFactorViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HappinessFactorViewModelStateCopyWith<$Res> {
  factory $HappinessFactorViewModelStateCopyWith(
          HappinessFactorViewModelState value,
          $Res Function(HappinessFactorViewModelState) then) =
      _$HappinessFactorViewModelStateCopyWithImpl<$Res,
          HappinessFactorViewModelState>;
  @useResult
  $Res call({HappinessFactorKind? happinessFactorKind});
}

/// @nodoc
class _$HappinessFactorViewModelStateCopyWithImpl<$Res,
        $Val extends HappinessFactorViewModelState>
    implements $HappinessFactorViewModelStateCopyWith<$Res> {
  _$HappinessFactorViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happinessFactorKind = freezed,
  }) {
    return _then(_value.copyWith(
      happinessFactorKind: freezed == happinessFactorKind
          ? _value.happinessFactorKind
          : happinessFactorKind // ignore: cast_nullable_to_non_nullable
              as HappinessFactorKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HappinessFactorViewModelStateImplCopyWith<$Res>
    implements $HappinessFactorViewModelStateCopyWith<$Res> {
  factory _$$HappinessFactorViewModelStateImplCopyWith(
          _$HappinessFactorViewModelStateImpl value,
          $Res Function(_$HappinessFactorViewModelStateImpl) then) =
      __$$HappinessFactorViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HappinessFactorKind? happinessFactorKind});
}

/// @nodoc
class __$$HappinessFactorViewModelStateImplCopyWithImpl<$Res>
    extends _$HappinessFactorViewModelStateCopyWithImpl<$Res,
        _$HappinessFactorViewModelStateImpl>
    implements _$$HappinessFactorViewModelStateImplCopyWith<$Res> {
  __$$HappinessFactorViewModelStateImplCopyWithImpl(
      _$HappinessFactorViewModelStateImpl _value,
      $Res Function(_$HappinessFactorViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happinessFactorKind = freezed,
  }) {
    return _then(_$HappinessFactorViewModelStateImpl(
      happinessFactorKind: freezed == happinessFactorKind
          ? _value.happinessFactorKind
          : happinessFactorKind // ignore: cast_nullable_to_non_nullable
              as HappinessFactorKind?,
    ));
  }
}

/// @nodoc

class _$HappinessFactorViewModelStateImpl
    implements _HappinessFactorViewModelState {
  const _$HappinessFactorViewModelStateImpl({this.happinessFactorKind = null});

  @override
  @JsonKey()
  final HappinessFactorKind? happinessFactorKind;

  @override
  String toString() {
    return 'HappinessFactorViewModelState(happinessFactorKind: $happinessFactorKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HappinessFactorViewModelStateImpl &&
            (identical(other.happinessFactorKind, happinessFactorKind) ||
                other.happinessFactorKind == happinessFactorKind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, happinessFactorKind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HappinessFactorViewModelStateImplCopyWith<
          _$HappinessFactorViewModelStateImpl>
      get copyWith => __$$HappinessFactorViewModelStateImplCopyWithImpl<
          _$HappinessFactorViewModelStateImpl>(this, _$identity);
}

abstract class _HappinessFactorViewModelState
    implements HappinessFactorViewModelState {
  const factory _HappinessFactorViewModelState(
          {final HappinessFactorKind? happinessFactorKind}) =
      _$HappinessFactorViewModelStateImpl;

  @override
  HappinessFactorKind? get happinessFactorKind;
  @override
  @JsonKey(ignore: true)
  _$$HappinessFactorViewModelStateImplCopyWith<
          _$HappinessFactorViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
