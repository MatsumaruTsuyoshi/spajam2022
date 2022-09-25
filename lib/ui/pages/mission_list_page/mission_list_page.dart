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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(missionListPageViewModelProvider);
    final clearNumber =
        viewModel.missions.where((element) => element.missionIsClear).toList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            isChallenger
                ? const SizedBox()
                : SizedBox(
                    width: 120,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CreateMissionPage(),
                        ),
                      ),
                      child: const Text(
                        'クエスト作成',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xCA1E1E48)),
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
            const SizedBox(height: 50),
            CompleteIndicator(
              total: viewModel.missions.length,
              clearNumber: clearNumber.length,
            ),
            SizedBox(
                height:
                    viewModel.missions.length == clearNumber.length ? 70 : 80),
            SizedBox(
              height: 360,
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
                              height: 210,
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
                      mission.missionIsClear
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
