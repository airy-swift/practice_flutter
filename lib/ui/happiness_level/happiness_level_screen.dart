import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_level_kind.dart';
import 'package:practice_flutter/ui/happiness_level/happiness_view_model.dart';

class HappinessLevelScreen extends HookConsumerWidget {
  const HappinessLevelScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final happinessLevelKind = ref.watch(happinessViewModelProvider.select((v) => v.happinessLevelKind));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '幸か不幸か',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...HappinessLevelKind.values.map(
            (v) => RadioListTile(
              value: v,
              title: Text(v.jp),
              groupValue: happinessLevelKind,
              onChanged: ref.read(happinessViewModelProvider.notifier).setHappinessLevelKind,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
          onPressed: happinessLevelKind == null ? null : () {},
          child: const Text(
            '次へ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
