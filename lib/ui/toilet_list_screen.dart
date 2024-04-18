import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/ui/toilet_view_model.dart';

class ToiletListScreen extends HookConsumerWidget {
  const ToiletListScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toilets = ref.watch(toiletViewModelProvider.select((v) => v.toilets));

    useEffect(
      () {
        Future<void>.delayed(Duration.zero).then((_) {
          ref.read(toiletViewModelProvider.notifier).fetchToilets();
        });
        return;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toilet list',
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: toilets.when(
            data: (data) => data == null
                ? const Center(
                    child: Text('データがありません'),
                  )
                : ListView.builder(
                    itemCount: data.toiletData.length,
                    itemBuilder: (context, index) {
                      final toilet = data.toiletData[index];
                      return ListTile(
                        title: Text(
                          toilet.title,
                        ),
                      );
                    },
                  ),
            error: (e, __) => Center(child: Text(e.toString())),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
