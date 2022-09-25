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
            SizedBox(height: 300, child: Image.asset('assets/images/logo.png')),
            SizedBox(height: 40),
            SizedBox(
              width: 200,
              height: 60,
              child: OutlinedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MissionListPage(isChallenger: false),
                  ),
                ),
                child: const Text(
                  '旅行者',
                  style: TextStyle(fontSize: 22, color: Color(0xCA1E1E48)),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  side: BorderSide(
                    color: Color(0xCA1E1E48), //枠線の色
                    width: 3,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MissionListPage(isChallenger: true),
                  ),
                ),
                child: const Text(
                  'チャレンジャー',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  primary: Color(0xCA1E1E48),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
