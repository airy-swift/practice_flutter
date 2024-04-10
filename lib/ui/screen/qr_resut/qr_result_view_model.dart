
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';
import 'package:practice_flutter/ui/screen/qr_read/qr_read_screen.dart';

part 'qr_result_view_model.freezed.dart';

final qrResultViewModelProvider = StateNotifierProvider.autoDispose<QrResultViewModel, QrResultViewModelState>(
  (ref) => QrResultViewModel(const QrResultViewModelState(), ref.read),
);

@freezed
class QrResultViewModelState with _$QrResultViewModelState {
  const factory QrResultViewModelState({
    @Default('--') String qrText,
  }) = _QrResultViewModelState;
}

class QrResultViewModel extends ViewModel<QrResultViewModelState> {
  QrResultViewModel(super._state, super.read);

  void setQrText(String value) => state = state.copyWith.call(qrText: value.replaceAll('/', '\n'));

  void startQrRead() => router.push(QrReadScreen.routePath);
}
