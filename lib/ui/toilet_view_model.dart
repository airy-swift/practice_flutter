
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/toilet/toilet.dart';
import 'package:practice_flutter/domain/toilet/toilet_controller.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';

part 'toilet_view_model.freezed.dart';

final toiletViewModelProvider = StateNotifierProvider.autoDispose<ToiletViewModel, ToiletViewModelState>(
  (ref) => ToiletViewModel(const ToiletViewModelState(), ref.read),
);

@freezed
class ToiletViewModelState with _$ToiletViewModelState {
  const factory ToiletViewModelState({
    @Default(AsyncValue.data(null)) AsyncValue<Toilets?> toilets,
  }) = _ToiletViewModelState;
}

class ToiletViewModel extends ViewModel<ToiletViewModelState> {
  ToiletViewModel(super._state, super.read);

  ToiletController get _toiletController => read(toiletControllerProvider);


  Future<void> fetchToilets() async {
    if (!mounted || state.toilets is AsyncLoading) {
      return;
    }

    state = state.copyWith.call(toilets: const AsyncValue.loading());

    try {
      final result = await _toiletController.getToiletList();
      state = state.copyWith.call(toilets: AsyncValue.data(result));
    } on Exception catch (e, st) {
      state = state.copyWith.call(toilets: AsyncValue.error(e, st));
    }
  }
}
