import 'dart:async';

import 'package:flutter/material.dart' show BuildContext, protected;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/app/router.dart';
import 'package:practice_flutter/foundation/util/reader.dart';

abstract class ViewModel<T> extends StateNotifier<T> {
  ViewModel(super._state, this.read);

  @protected
  final Reader read;

  @protected
  AsyncValue<void> processing = const AsyncData(null);

  @protected
  GoRouter get router => read(routerProvider);

  // @protected
  // BarrierController get barrier => read(barrierProvider.notifier);

  @protected
  BuildContext get routerContext => read(routerProvider).routerDelegate.navigatorKey.currentContext!;

  /// ボタンを押したときのリクエスト用
  @protected
  Future<void> process(Future<void> Function() operation) async {
    if (!mounted || processing is AsyncLoading) {
      return;
    }
    processing = const AsyncValue.loading();

    try {
      await operation();

      processing = const AsyncValue.data(null);
    } on Exception catch (e, st) {
      processing = AsyncValue.error(e, st);
      rethrow;
    } finally {
      processing = const AsyncValue.data(null);
    }
  }
}
