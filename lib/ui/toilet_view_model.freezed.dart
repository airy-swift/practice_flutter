// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toilet_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToiletViewModelState {
  AsyncValue<Toilets?> get toilets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToiletViewModelStateCopyWith<ToiletViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToiletViewModelStateCopyWith<$Res> {
  factory $ToiletViewModelStateCopyWith(ToiletViewModelState value,
          $Res Function(ToiletViewModelState) then) =
      _$ToiletViewModelStateCopyWithImpl<$Res, ToiletViewModelState>;
  @useResult
  $Res call({AsyncValue<Toilets?> toilets});
}

/// @nodoc
class _$ToiletViewModelStateCopyWithImpl<$Res,
        $Val extends ToiletViewModelState>
    implements $ToiletViewModelStateCopyWith<$Res> {
  _$ToiletViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilets = null,
  }) {
    return _then(_value.copyWith(
      toilets: null == toilets
          ? _value.toilets
          : toilets // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Toilets?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToiletViewModelStateImplCopyWith<$Res>
    implements $ToiletViewModelStateCopyWith<$Res> {
  factory _$$ToiletViewModelStateImplCopyWith(_$ToiletViewModelStateImpl value,
          $Res Function(_$ToiletViewModelStateImpl) then) =
      __$$ToiletViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<Toilets?> toilets});
}

/// @nodoc
class __$$ToiletViewModelStateImplCopyWithImpl<$Res>
    extends _$ToiletViewModelStateCopyWithImpl<$Res, _$ToiletViewModelStateImpl>
    implements _$$ToiletViewModelStateImplCopyWith<$Res> {
  __$$ToiletViewModelStateImplCopyWithImpl(_$ToiletViewModelStateImpl _value,
      $Res Function(_$ToiletViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilets = null,
  }) {
    return _then(_$ToiletViewModelStateImpl(
      toilets: null == toilets
          ? _value.toilets
          : toilets // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Toilets?>,
    ));
  }
}

/// @nodoc

class _$ToiletViewModelStateImpl implements _ToiletViewModelState {
  const _$ToiletViewModelStateImpl(
      {this.toilets = const AsyncValue.data(null)});

  @override
  @JsonKey()
  final AsyncValue<Toilets?> toilets;

  @override
  String toString() {
    return 'ToiletViewModelState(toilets: $toilets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToiletViewModelStateImpl &&
            (identical(other.toilets, toilets) || other.toilets == toilets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toilets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToiletViewModelStateImplCopyWith<_$ToiletViewModelStateImpl>
      get copyWith =>
          __$$ToiletViewModelStateImplCopyWithImpl<_$ToiletViewModelStateImpl>(
              this, _$identity);
}

abstract class _ToiletViewModelState implements ToiletViewModelState {
  const factory _ToiletViewModelState({final AsyncValue<Toilets?> toilets}) =
      _$ToiletViewModelStateImpl;

  @override
  AsyncValue<Toilets?> get toilets;
  @override
  @JsonKey(ignore: true)
  _$$ToiletViewModelStateImplCopyWith<_$ToiletViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
