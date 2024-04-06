import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      // GoRoute(
      //   path: _Dummy.routePath,
      //   builder: (_, __) => const _Dummy(),
      // ),
    ],
  ),
);
