import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/screen/qr_resut/qr_result_view_model.dart';

class QrResultScreen extends HookConsumerWidget {
  const QrResultScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrText = ref.watch(qrResultViewModelProvider.select((v) => v.qrText));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.withOpacity(0.1),
              ),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(12),
                  Align(
                    alignment: Alignment.center,
                    child: Text(qrText),
                  ),
                  const Gap(12),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ElevatedButton(
          onPressed: ref.read(qrResultViewModelProvider.notifier).startQrRead,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
          child: const Text(
            'QRを読む',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
