import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_factor_kind.dart';
import 'package:practice_flutter/ui/happiness_factor/happiness_factor_view_model.dart';
import 'package:practice_flutter/ui/happiness_level/happiness_view_model.dart';

class HappinessFactorScreen extends HookConsumerWidget {
  const HappinessFactorScreen({
    super.key,
  });

  static const routePath = '/happiness_factor';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final happinessLevelKind = ref.watch(happinessViewModelProvider.select((v) => v.happinessLevelKind));
    final happinessFactorKind = ref.watch(happinessFactorViewModelProvider.select((v) => v.happinessFactorKind));

    return Scaffold(
      appBar: AppBar(
        title: Text(happinessLevelKind!.jp),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '要因は？',
          ),
          ...HappinessFactorKind.values.map(
            (v) => RadioListTile<HappinessFactorKind>(
              value: v,
              title: Text(v.jp),
              groupValue: happinessFactorKind,
              onChanged: ref.read(happinessFactorViewModelProvider.notifier).setHappinessFactorKind,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
          ),
          onPressed: happinessFactorKind == null
              ? null
              : () {
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                          child: Text(
                            '私は${happinessLevelKind.jp}。要因は${happinessFactorKind.jp}。',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
          child: const Text(
            '回答',
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
