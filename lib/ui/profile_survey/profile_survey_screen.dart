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

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'アンケート',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton(
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
                        groupValue: genderKind,
                        onChanged: ref.read(profileSurveyViewModelProvider.notifier).setGenderKind,
                      ),
                    ),
                  ],
                ),
              ProfileKind.name => TextField(
                controller: ref.read(profileSurveyViewModelProvider.notifier).nameTextController,
              ),
              null => const SizedBox.shrink(),
            },
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            
          },
          child: const Text("完了"),
        ),
      ),
    );
  }
}
