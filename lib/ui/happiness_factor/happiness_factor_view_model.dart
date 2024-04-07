import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_factor_kind.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';

part 'happiness_factor_view_model.freezed.dart';

final happinessFactorViewModelProvider = StateNotifierProvider.autoDispose<HappinessFactorViewModel, HappinessFactorViewModelState>(
  (ref) => HappinessFactorViewModel(const HappinessFactorViewModelState(), ref.read),
);

@freezed
class HappinessFactorViewModelState with _$HappinessFactorViewModelState {
  const factory HappinessFactorViewModelState({
    @Default([]) List<HappinessFactorKind> happinessFactorKinds,
  }) = _HappinessFactorViewModelState;
}

class HappinessFactorViewModel extends ViewModel<HappinessFactorViewModelState> {
  HappinessFactorViewModel(super._state, super.read);

  void setHappinessFactorKinds({required bool? isAdded, required HappinessFactorKind kind}) {
    if (isAdded == null) {
      return;
    }

    final kinds = state.happinessFactorKinds.toList();
    if (isAdded) {
      state = state.copyWith.call(happinessFactorKinds: [kind, ...kinds]);
    } else {
      state = state.copyWith.call(happinessFactorKinds: kinds..remove(kind));
    }
  }
}
