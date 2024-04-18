import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/toilet_list_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: ToiletListScreen.routePath,
        builder: (_, __) => const ToiletListScreen(),
      ),
    ],
  ),
);
