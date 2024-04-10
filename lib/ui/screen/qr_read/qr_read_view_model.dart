import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:practice_flutter/foundation/util/view_model.dart';
import 'package:practice_flutter/ui/screen/qr_resut/qr_result_view_model.dart';

part 'qr_read_view_model.freezed.dart';

final qrReadViewModelProvider = StateNotifierProvider<QrReadViewModel, QrReadViewModelState>(
  (ref) => QrReadViewModel(const QrReadViewModelState(), ref.read),
);

@freezed
class QrReadViewModelState with _$QrReadViewModelState {
  const factory QrReadViewModelState() = _QrReadViewModelState;
}

class QrReadViewModel extends ViewModel<QrReadViewModelState> {
  QrReadViewModel(super._state, super.read);

  QrResultViewModel get _qrResultViewModel => read(qrResultViewModelProvider.notifier);

  var qrReadCache = '';

  void init() {
    qrReadCache = '';
  }

  void readQrs(BarcodeCapture capture) => process(() async {
        if (qrReadCache.isNotEmpty) {
          return;
        }
        final barcodes = capture.barcodes;
        for (final barcode in barcodes) {
          final raw = barcode.rawValue;
          print(raw);
          if (raw != null && raw.contains('/')) {
            qrReadCache = raw;
            _qrResultViewModel.setQrText(raw);
            router.pop();
            return;
          }
        }
        ScaffoldMessenger.of(routerContext).showSnackBar(
          const SnackBar(content: Text('正規のデータではありません')),
        );
      });
}
