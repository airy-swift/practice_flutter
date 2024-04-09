// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_survey_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileSurveyViewModelState {
  ProfileKind? get profileKind => throw _privateConstructorUsedError;
  GenderKind? get genderKind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileSurveyViewModelStateCopyWith<ProfileSurveyViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSurveyViewModelStateCopyWith<$Res> {
  factory $ProfileSurveyViewModelStateCopyWith(
          ProfileSurveyViewModelState value,
          $Res Function(ProfileSurveyViewModelState) then) =
      _$ProfileSurveyViewModelStateCopyWithImpl<$Res,
          ProfileSurveyViewModelState>;
  @useResult
  $Res call({ProfileKind? profileKind, GenderKind? genderKind});
}

/// @nodoc
class _$ProfileSurveyViewModelStateCopyWithImpl<$Res,
        $Val extends ProfileSurveyViewModelState>
    implements $ProfileSurveyViewModelStateCopyWith<$Res> {
  _$ProfileSurveyViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileKind = freezed,
    Object? genderKind = freezed,
  }) {
    return _then(_value.copyWith(
      profileKind: freezed == profileKind
          ? _value.profileKind
          : profileKind // ignore: cast_nullable_to_non_nullable
              as ProfileKind?,
      genderKind: freezed == genderKind
          ? _value.genderKind
          : genderKind // ignore: cast_nullable_to_non_nullable
              as GenderKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSurveyViewModelStateImplCopyWith<$Res>
    implements $ProfileSurveyViewModelStateCopyWith<$Res> {
  factory _$$ProfileSurveyViewModelStateImplCopyWith(
          _$ProfileSurveyViewModelStateImpl value,
          $Res Function(_$ProfileSurveyViewModelStateImpl) then) =
      __$$ProfileSurveyViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileKind? profileKind, GenderKind? genderKind});
}

/// @nodoc
class __$$ProfileSurveyViewModelStateImplCopyWithImpl<$Res>
    extends _$ProfileSurveyViewModelStateCopyWithImpl<$Res,
        _$ProfileSurveyViewModelStateImpl>
    implements _$$ProfileSurveyViewModelStateImplCopyWith<$Res> {
  __$$ProfileSurveyViewModelStateImplCopyWithImpl(
      _$ProfileSurveyViewModelStateImpl _value,
      $Res Function(_$ProfileSurveyViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileKind = freezed,
    Object? genderKind = freezed,
  }) {
    return _then(_$ProfileSurveyViewModelStateImpl(
      profileKind: freezed == profileKind
          ? _value.profileKind
          : profileKind // ignore: cast_nullable_to_non_nullable
              as ProfileKind?,
      genderKind: freezed == genderKind
          ? _value.genderKind
          : genderKind // ignore: cast_nullable_to_non_nullable
              as GenderKind?,
    ));
  }
}

/// @nodoc

class _$ProfileSurveyViewModelStateImpl
    implements _ProfileSurveyViewModelState {
  const _$ProfileSurveyViewModelStateImpl(
      {this.profileKind = null, this.genderKind = null});

  @override
  @JsonKey()
  final ProfileKind? profileKind;
  @override
  @JsonKey()
  final GenderKind? genderKind;

  @override
  String toString() {
    return 'ProfileSurveyViewModelState(profileKind: $profileKind, genderKind: $genderKind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSurveyViewModelStateImpl &&
            (identical(other.profileKind, profileKind) ||
                other.profileKind == profileKind) &&
            (identical(other.genderKind, genderKind) ||
                other.genderKind == genderKind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileKind, genderKind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSurveyViewModelStateImplCopyWith<_$ProfileSurveyViewModelStateImpl>
      get copyWith => __$$ProfileSurveyViewModelStateImplCopyWithImpl<
          _$ProfileSurveyViewModelStateImpl>(this, _$identity);
}

abstract class _ProfileSurveyViewModelState
    implements ProfileSurveyViewModelState {
  const factory _ProfileSurveyViewModelState(
      {final ProfileKind? profileKind,
      final GenderKind? genderKind}) = _$ProfileSurveyViewModelStateImpl;

  @override
  ProfileKind? get profileKind;
  @override
  GenderKind? get genderKind;
  @override
  @JsonKey(ignore: true)
  _$$ProfileSurveyViewModelStateImplCopyWith<_$ProfileSurveyViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
