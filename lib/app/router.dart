import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/screen/qr_read/qr_read_screen.dart';
import 'package:practice_flutter/ui/screen/qr_resut/qr_result_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: QrResultScreen.routePath,
        builder: (_, __) => const QrResultScreen(),
      ),
      GoRoute(
        path: QrReadScreen.routePath,
        builder: (_, __) => const QrReadScreen(),
      ),
    ],
  ),
);
