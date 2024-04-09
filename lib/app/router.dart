import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/profile_survey/profile_survey_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: ProfileSurveyScreen.routePath,
        builder: (_, __) => const ProfileSurveyScreen(),
      ),
    ],
  ),
);
