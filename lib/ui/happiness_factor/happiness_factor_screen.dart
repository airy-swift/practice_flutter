import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/happiness/happiness_factor_kind.dart';
import 'package:practice_flutter/ui/happiness_factor/happiness_factor_view_model.dart';
import 'package:practice_flutter/ui/happiness_level/happiness_level_view_model.dart';

class HappinessFactorScreen extends HookConsumerWidget {
  const HappinessFactorScreen({
    super.key,
  });

  static const routePath = '/happiness_factor';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final happinessLevelKind = ref.watch(happinessViewModelProvider.select((v) => v.happinessLevelKind));
    final happinessFactorKinds = ref.watch(happinessFactorViewModelProvider.select((v) => v.happinessFactorKinds));

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
            (v) => CheckboxListTile(
              value: happinessFactorKinds.contains(v),
              title: Text(v.jp),
              onChanged: (value) {
                ref.read(happinessFactorViewModelProvider.notifier).setHappinessFactorKinds(isAdded: value, kind: v);
              },
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
          onPressed: happinessFactorKinds.isEmpty
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
                            '私は${happinessLevelKind.jp}です。\n'
                            '${happinessFactorKinds.map((v) => '- ${v.jp}').join('\n')}'
                            '\nが要因です。',
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
