import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:spajam2022/common/colors.dart';
import 'package:spajam2022/ui/components/complete_indicator.dart';
import 'package:spajam2022/ui/pages/create_mission_page/create_mission_page.dart';
import 'package:spajam2022/ui/pages/mission_detail_page/mission_detail_page.dart';
import 'package:spajam2022/ui/pages/mission_list_page/misson_list_view_model.dart';

class MissionListPage extends ConsumerWidget {
  MissionListPage({required this.isChallenger});

  final bool isChallenger;
  bool isAchievementInit = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(missionListPageViewModelProvider);
    final clearNumber =
        viewModel.missions.where((element) => element.missionIsClear).toList();
    bool isAchievement = false;
    if (viewModel.missions.length == clearNumber.length) {
      isAchievement = true;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isChallenger
                ? const SizedBox()
                : SizedBox(
                    width: 120,
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CreateMissionPage(),
                        ),
                      ),
                      child: const Text(
                        'クエスト作成',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xCA1E1E48)),
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
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                CompleteIndicator(
                  total: viewModel.missions.length,
                  clearNumber: clearNumber.length,
                ),
                !isChallenger
                    ? const SizedBox()
                    : !isAchievement
                        ? const SizedBox()
                        : SizedBox(
                            height: 300,
                            child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_8edlac32.json'),
                          ),
              ],
            ),
            SizedBox(
                height:
                    viewModel.missions.length == clearNumber.length ? 30 : 40),
            SizedBox(
              height: 300,
              child: Swiper(
                onTap: (index) => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MissionDetailPage(
                      missionIndex: index,
                      isChallenger: isChallenger,
                    ),
                  ),
                ),
                controller: SwiperController(),
                itemBuilder: (BuildContext context, int index) {
                  final mission = viewModel.missions[index];
                  return Column(
                    children: [
                      Text('Quest ${index + 1}'),
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: mission.missionIsClear
                            ? baseGreen
                            : mission.missionIsDone
                                ? baseYellow
                                : baseBlue,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: mission.missionImagePath,
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: Center(
                                child: Text(
                                  mission.missionTitle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      !isChallenger
                          ? mission.missionIsClear
                              ? SizedBox(
                                  height: 70,
                                  child: Lottie.network(
                                      'https://assets8.lottiefiles.com/packages/lf20_4qldwfx4.json'),
                                )
                              : mission.missionIsDone
                                  ? SizedBox(
                                      height: 70,
                                      child: Lottie.network(
                                          'https://assets5.lottiefiles.com/packages/lf20_qaosdcg6.json'),
                                    )
                                  : SizedBox(
                                      width: 60,
                                      child: Lottie.network(
                                          'https://assets9.lottiefiles.com/private_files/lf30_dvttvgu0.json'),
                                    )
                          : mission.missionIsClear
                              ? SizedBox(
                                  height: 70,
                                  child: Lottie.network(
                                      'https://assets8.lottiefiles.com/packages/lf20_4qldwfx4.json'),
                                )
                              : mission.missionIsDone
                                  ? SizedBox(
                                      width: 60,
                                      child: Lottie.network(
                                          'https://assets9.lottiefiles.com/private_files/lf30_dvttvgu0.json'),
                                    )
                                  : SizedBox(
                                      height: 70,
                                      child: Lottie.network(
                                          'https://assets5.lottiefiles.com/packages/lf20_qaosdcg6.json'),
                                    ),
                    ],
                  );
                },
                itemCount: viewModel.missions.length,
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
