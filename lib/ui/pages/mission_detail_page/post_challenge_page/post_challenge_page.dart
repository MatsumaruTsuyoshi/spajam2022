import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/ui/pages/mission_detail_page/post_challenge_page/challenge_detail_view_model.dart';
import 'package:spajam2022/ui/pages/mission_detail_page/post_challenge_page/challenge_image_view_model.dart';
import 'package:spajam2022/ui/pages/mission_detail_page/post_challenge_page/post_challenge_view_model.dart';

class PostChallengePage extends ConsumerWidget {
  const PostChallengePage({Key? key, required this.missionId})
      : super(key: key);

  final String missionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    final isError = ref.watch(
        postChallengeViewModelProvider(missionId).select((s) => s.isError));
    final isLoading = ref.watch(
        postChallengeViewModelProvider(missionId).select((s) => s.isLoading));

    final challengeDetailController = ref.watch(challengeDetailViewModelProvider
        .select((s) => s.challengeDetailController));
    final imageFile =
        ref.watch(challengeImageViewModelProvider.select((s) => s.imageFile));

    return Scaffold(
      body: isError
          ? const Center(child: Text('エラー発生'))
          : SafeArea(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 4),
                              child: Text('チャレンジ内容'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: TextField(
                              controller: challengeDetailController,
                              onChanged: ref
                                  .read(
                                      challengeDetailViewModelProvider.notifier)
                                  .editChallengeDetailText,
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 8),
                              child: Text('画像'),
                            ),
                          ),
                          imageFile == null
                              ? GestureDetector(
                                  onTap: () => ref
                                      .read(challengeImageViewModelProvider
                                          .notifier)
                                      .pickImage(),
                                  child: Container(
                                    height: width - 2 * 16,
                                    decoration:
                                        const BoxDecoration(color: Colors.grey),
                                  ),
                                )
                              : Image.file(
                                  fit: BoxFit.fill, File(imageFile.path)),
                          Padding(
                            padding: const EdgeInsets.all(32),
                            child: ElevatedButton(
                              onPressed: () {
                                // 余裕があったらダイアログかなんかを出したい
                                if (imageFile != null &&
                                    challengeDetailController.text != '') {
                                  ref
                                      .read(postChallengeViewModelProvider(
                                              missionId)
                                          .notifier)
                                      .postChallenge(
                                          imagePath: imageFile.path,
                                          challengeDetail:
                                              challengeDetailController.text);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                primary: Color(0xCA1E1E48),
                              ),
                              child: const Text('チャレンジを投稿する'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  isLoading
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.24)),
                        )
                      : const SizedBox(),
                  isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
    );
  }
}
