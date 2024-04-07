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
  List<HappinessFactorKind> get happinessFactorKinds =>
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
  $Res call({List<HappinessFactorKind> happinessFactorKinds});
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
    Object? happinessFactorKinds = null,
  }) {
    return _then(_value.copyWith(
      happinessFactorKinds: null == happinessFactorKinds
          ? _value.happinessFactorKinds
          : happinessFactorKinds // ignore: cast_nullable_to_non_nullable
              as List<HappinessFactorKind>,
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
  $Res call({List<HappinessFactorKind> happinessFactorKinds});
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
    Object? happinessFactorKinds = null,
  }) {
    return _then(_$HappinessFactorViewModelStateImpl(
      happinessFactorKinds: null == happinessFactorKinds
          ? _value._happinessFactorKinds
          : happinessFactorKinds // ignore: cast_nullable_to_non_nullable
              as List<HappinessFactorKind>,
    ));
  }
}

/// @nodoc

class _$HappinessFactorViewModelStateImpl
    implements _HappinessFactorViewModelState {
  const _$HappinessFactorViewModelStateImpl(
      {final List<HappinessFactorKind> happinessFactorKinds = const []})
      : _happinessFactorKinds = happinessFactorKinds;

  final List<HappinessFactorKind> _happinessFactorKinds;
  @override
  @JsonKey()
  List<HappinessFactorKind> get happinessFactorKinds {
    if (_happinessFactorKinds is EqualUnmodifiableListView)
      return _happinessFactorKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_happinessFactorKinds);
  }

  @override
  String toString() {
    return 'HappinessFactorViewModelState(happinessFactorKinds: $happinessFactorKinds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HappinessFactorViewModelStateImpl &&
            const DeepCollectionEquality()
                .equals(other._happinessFactorKinds, _happinessFactorKinds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_happinessFactorKinds));

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
          {final List<HappinessFactorKind> happinessFactorKinds}) =
      _$HappinessFactorViewModelStateImpl;

  @override
  List<HappinessFactorKind> get happinessFactorKinds;
  @override
  @JsonKey(ignore: true)
  _$$HappinessFactorViewModelStateImplCopyWith<
          _$HappinessFactorViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
