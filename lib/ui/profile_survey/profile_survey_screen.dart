import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/profile_survey/gender_kind.dart';
import 'package:practice_flutter/domain/profile_survey/profile_kind.dart';
import 'package:practice_flutter/ui/profile_survey/profile_survey_view_model.dart';

class ProfileSurveyScreen extends HookConsumerWidget {
  const ProfileSurveyScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileKind = ref.watch(profileSurveyViewModelProvider.select((v) => v.profileKind));
    final genderKind = ref.watch(profileSurveyViewModelProvider.select((v) => v.genderKind));
    final selectedAnswer = ref.read(profileSurveyViewModelProvider.notifier).selectedAnswer;
    ref.watch(profileSurveyViewModelProvider.select((v) => v.name));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'アンケート',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(30),
              DropdownButton(
                value: profileKind,
                items: ProfileKind.values
                    .map(
                      (v) => DropdownMenuItem<ProfileKind>(
                        value: v,
                        child: Text(v.jp),
                      ),
                    )
                    .toList(),
                onChanged: ref.read(profileSurveyViewModelProvider.notifier).setProfileKind,
              ),
              const Gap(24),
              switch (profileKind) {
                ProfileKind.gender => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...GenderKind.values.map(
                        (v) => RadioListTile(
                          value: v,
                          title: Text(v.jp),
                          groupValue: genderKind,
                          onChanged: ref.read(profileSurveyViewModelProvider.notifier).setGenderKind,
                        ),
                      ),
                    ],
                  ),
                ProfileKind.name => TextField(
                    onChanged: ref.read(profileSurveyViewModelProvider.notifier).setName,
                  ),
                null => const SizedBox.shrink(),
              },
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: profileKind == null || selectedAnswer.isEmpty
              ? null
              : () {
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: Text(profileKind.jp),
                        content: Text(selectedAnswer),
                      );
                    },
                  );
                },
          child: const Text(
            '完了',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
