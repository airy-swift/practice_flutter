import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_level_kind.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';

part 'happiness_view_model.freezed.dart';

final happinessViewModelProvider = StateNotifierProvider.autoDispose<HappinessViewModel, HappinessViewModelState>(
  (ref) => HappinessViewModel(const HappinessViewModelState(), ref.read),
);

@freezed
class HappinessViewModelState with _$HappinessViewModelState {
  const factory HappinessViewModelState({
    @Default(null) HappinessLevelKind? happinessLevelKind,
  }) = _HappinessViewModelState;
}

class HappinessViewModel extends ViewModel<HappinessViewModelState> {
  HappinessViewModel(super._state, super.read);

  void setHappinessLevelKind(HappinessLevelKind? kind) => state = state.copyWith.call(happinessLevelKind: kind);


}

