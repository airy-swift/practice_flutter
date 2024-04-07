import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_level_kind.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';
import 'package:practice_flutter/ui/happiness_factor/happiness_factor_screen.dart';

part 'happiness_level_view_model.freezed.dart';

final happinessViewModelProvider = StateNotifierProvider.autoDispose<HappinessViewModel, HappinessLevelViewModelState>(
  (ref) => HappinessViewModel(const HappinessLevelViewModelState(), ref.read),
);

@freezed
class HappinessLevelViewModelState with _$HappinessLevelViewModelState {
  const factory HappinessLevelViewModelState({
    @Default(null) HappinessLevelKind? happinessLevelKind,
  }) = _HappinessLevelViewModelState;
}

class HappinessViewModel extends ViewModel<HappinessLevelViewModelState> {
  HappinessViewModel(super._state, super.read);

  void setHappinessLevelKind(HappinessLevelKind? kind) => state = state.copyWith.call(happinessLevelKind: kind);

  void goNext() {
    router.push(HappinessFactorScreen.routePath);
  }
}
