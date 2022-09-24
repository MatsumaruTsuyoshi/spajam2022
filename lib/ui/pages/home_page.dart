import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/ui/pages/home_page_view_model.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(homePageViewModelProvider.select((s) => s.counter));
    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプルページ'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(homePageViewModelProvider.notifier).countUp(),
        child: const Icon(Icons.add_rounded),
      ),
      body: Center(
        child: Text('$count'),
      ),
    );
  }
}
