import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/ui/pages/create_mission_page/create_mission_page_view_model.dart';
import 'package:spajam2022/ui/pages/create_mission_page/mission_detail_view_model.dart';
import 'package:spajam2022/ui/pages/create_mission_page/mission_image_view_model.dart';
import 'package:spajam2022/ui/pages/create_mission_page/mission_title_view_model.dart';

class CreateMissionPage extends ConsumerWidget {
  const CreateMissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile =
        ref.watch(missionImageProvider.select((s) => s.imageFile));
    final missionTitleController =
        ref.watch(missionTitleProvider.select((s) => s.missionTitleController));
    final missionDetailController = ref
        .watch(missionDetailProvider.select((s) => s.missionDetailController));

    final isLoading = ref
        .watch(createMissionPageViewModelProvider.select((s) => s.isLoading));
    final isError =
        ref.watch(createMissionPageViewModelProvider.select((s) => s.isError));

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: isError
          ? const Center(child: Text('エラー発生'))
          : Stack(
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
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text('missionタイトル')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            controller: missionTitleController,
                            onChanged: ref
                                .read(missionTitleProvider.notifier)
                                .editMissionTitle,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Text('mission本文'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            controller: missionDetailController,
                            onChanged: ref
                                .read(missionDetailProvider.notifier)
                                .editMissionDetailText,
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
                                    .read(missionImageProvider.notifier)
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
                                  missionTitleController.text != '' &&
                                  missionDetailController.text != '') {
                                ref
                                    .read(createMissionPageViewModelProvider
                                        .notifier)
                                    .createMission(
                                        imagePath: imageFile.path,
                                        missionTitle:
                                            missionTitleController.text,
                                        missionDetail:
                                            missionDetailController.text);
                              }
                            },
                            child: const Text('missionを投稿する'),
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
    );
  }
}
