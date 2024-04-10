import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:practice_flutter/ui/screen/qr_read/qr_read_view_model.dart';

class QrReadScreen extends HookConsumerWidget {
  const QrReadScreen({
    super.key,
  });

  static const routePath = '/qr_read';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect(() {
      ref.read(qrReadViewModelProvider.notifier).init();
    }, [],);

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR read'),
      ),
      body: Center(
        child: MobileScanner(
          // fit: BoxFit.contain,
          controller: MobileScannerController(
            torchEnabled: true,

          ),
          onDetect: ref.read(qrReadViewModelProvider.notifier).readQrs,
        ),
      ),
    );
  }
}
