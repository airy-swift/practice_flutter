
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/profile_survey/gender_kind.dart';
import 'package:practice_flutter/domain/profile_survey/profile_kind.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';

part 'profile_survey_view_model.freezed.dart';

final profileSurveyViewModelProvider = StateNotifierProvider.autoDispose<ProfileSurveyViewModel, ProfileSurveyViewModelState>(
  (ref) => ProfileSurveyViewModel(const ProfileSurveyViewModelState(), ref.read),
);

@freezed
class ProfileSurveyViewModelState with _$ProfileSurveyViewModelState {
  const factory ProfileSurveyViewModelState({
    @Default(null) ProfileKind? profileKind,
    @Default(null) GenderKind? genderKind,
  }) = _ProfileSurveyViewModelState;
}

class ProfileSurveyViewModel extends ViewModel<ProfileSurveyViewModelState> {
  ProfileSurveyViewModel(super._state, super.read);

  final nameTextController = TextEditingController();

  void setProfileKind(ProfileKind? value) => state = state.copyWith.call(profileKind: value);

  void setGenderKind(GenderKind? value) => state = state.copyWith.call(genderKind: value);

}
