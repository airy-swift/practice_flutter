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
    @Default(null) HappinessFactorKind? happinessFactorKind,
  }) = _HappinessFactorViewModelState;
}

class HappinessFactorViewModel extends ViewModel<HappinessFactorViewModelState> {
  HappinessFactorViewModel(super._state, super.read);

  void setHappinessFactorKind(HappinessFactorKind? kind) => state = state.copyWith.call(happinessFactorKind: kind);
}
