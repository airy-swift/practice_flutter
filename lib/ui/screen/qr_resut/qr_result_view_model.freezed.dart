// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_result_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrResultViewModelState {
  String get qrText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrResultViewModelStateCopyWith<QrResultViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrResultViewModelStateCopyWith<$Res> {
  factory $QrResultViewModelStateCopyWith(QrResultViewModelState value,
          $Res Function(QrResultViewModelState) then) =
      _$QrResultViewModelStateCopyWithImpl<$Res, QrResultViewModelState>;
  @useResult
  $Res call({String qrText});
}

/// @nodoc
class _$QrResultViewModelStateCopyWithImpl<$Res,
        $Val extends QrResultViewModelState>
    implements $QrResultViewModelStateCopyWith<$Res> {
  _$QrResultViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrText = null,
  }) {
    return _then(_value.copyWith(
      qrText: null == qrText
          ? _value.qrText
          : qrText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrResultViewModelStateImplCopyWith<$Res>
    implements $QrResultViewModelStateCopyWith<$Res> {
  factory _$$QrResultViewModelStateImplCopyWith(
          _$QrResultViewModelStateImpl value,
          $Res Function(_$QrResultViewModelStateImpl) then) =
      __$$QrResultViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String qrText});
}

/// @nodoc
class __$$QrResultViewModelStateImplCopyWithImpl<$Res>
    extends _$QrResultViewModelStateCopyWithImpl<$Res,
        _$QrResultViewModelStateImpl>
    implements _$$QrResultViewModelStateImplCopyWith<$Res> {
  __$$QrResultViewModelStateImplCopyWithImpl(
      _$QrResultViewModelStateImpl _value,
      $Res Function(_$QrResultViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrText = null,
  }) {
    return _then(_$QrResultViewModelStateImpl(
      qrText: null == qrText
          ? _value.qrText
          : qrText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QrResultViewModelStateImpl implements _QrResultViewModelState {
  const _$QrResultViewModelStateImpl({this.qrText = '--'});

  @override
  @JsonKey()
  final String qrText;

  @override
  String toString() {
    return 'QrResultViewModelState(qrText: $qrText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrResultViewModelStateImpl &&
            (identical(other.qrText, qrText) || other.qrText == qrText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrResultViewModelStateImplCopyWith<_$QrResultViewModelStateImpl>
      get copyWith => __$$QrResultViewModelStateImplCopyWithImpl<
          _$QrResultViewModelStateImpl>(this, _$identity);
}

abstract class _QrResultViewModelState implements QrResultViewModelState {
  const factory _QrResultViewModelState({final String qrText}) =
      _$QrResultViewModelStateImpl;

  @override
  String get qrText;
  @override
  @JsonKey(ignore: true)
  _$$QrResultViewModelStateImplCopyWith<_$QrResultViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
