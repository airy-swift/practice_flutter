import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/happiness_level/happiness_level_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: HappinessLevelScreen.routePath,
        builder: (_, __) => const HappinessLevelScreen(),
      ),
    ],
  ),
);
