import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/ui/pages/mission_list_page/mission_list_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MissionListPage(isChallenger: false),
                ),
              ),
              child: const Text(
                '旅行者',
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MissionListPage(isChallenger: true),
                ),
              ),
              child: const Text(
                'チャレンジャー',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
