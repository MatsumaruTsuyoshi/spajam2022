import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spajam2022/common/colors.dart';
import 'package:spajam2022/model/challenge_post.dart';
import 'package:spajam2022/model/mission.dart';
import 'package:spajam2022/ui/pages/mission_detail_page/post_challenge_page/post_challenge_page.dart';
import 'package:spajam2022/ui/pages/mission_list_page/misson_list_view_model.dart';

class MissionDetailPage extends ConsumerWidget {
  MissionDetailPage({
    Key? key,
    required this.missionIndex,
    required this.isChallenger,
  }) : super(key: key);

  final int missionIndex;
  final bool isChallenger;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listenedMissionList =
        ref.watch(missionListPageViewModelProvider.select((s) => s.missions));
    final mission = listenedMissionList[missionIndex];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: baseYellow,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  PostChallengePage(missionId: mission.missionId)));
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  child: Text(
                    'クエスト',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      color: baseGrey, borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: mission.missionImagePath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(mission.missionTitle),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48),
            ])),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: mission.challengePosts.length,
                    (context, index) {
              return _ChallengesWidget(
                  challengePost: mission.challengePosts[index]);
            })),
            isChallenger
                ? SliverList(
                    delegate: SliverChildListDelegate([
                    const SizedBox(height: 40),

                    //clear button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: ElevatedButton(
                          onPressed: () async {
                            if (mission.missionIsDone) {
                              return;
                            }

                            final missionsCollection =
                                firestore.collection('missions');
                            final data = await missionsCollection.get();
                            final missions = data.docs
                                .map((e) => Mission.fromJson(
                                    e.data() as Map<String, dynamic>))
                                .toList();
                            final matchMission = missions.firstWhere(
                                (element) =>
                                    element.missionId == mission.missionId);
                            await missionsCollection
                                .doc(matchMission.missionId)
                                .update(<String, dynamic>{
                              'mission_is_done': true,
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                mission.missionIsDone ? baseYellow : baseGreen,
                            elevation: 0,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              mission.missionIsDone ? '待ちです' : 'チャレンジ申請',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    const SizedBox(height: 24),
                  ]))
                : SliverList(
                    delegate: SliverChildListDelegate([
                    const SizedBox(height: 40),

                    //clear button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: ElevatedButton(
                          onPressed: () async {
                            final missionsCollection =
                                firestore.collection('missions');
                            final data = await missionsCollection.get();
                            final missions = data.docs
                                .map((e) => Mission.fromJson(
                                    e.data() as Map<String, dynamic>))
                                .toList();
                            final matchMission = missions.firstWhere(
                                (element) =>
                                    element.missionId == mission.missionId);
                            await missionsCollection
                                .doc(matchMission.missionId)
                                .update(<String, dynamic>{
                              'mission_is_clear': true,
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: baseGreen,
                            elevation: 0,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              'クリア!',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    // not clear button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: ElevatedButton(
                          onPressed: () async {
                            final missionsCollection =
                                firestore.collection('missions');
                            final data = await missionsCollection.get();
                            final missions = data.docs
                                .map((e) => Mission.fromJson(
                                    e.data() as Map<String, dynamic>))
                                .toList();
                            final matchMission = missions.firstWhere(
                                (element) =>
                                    element.missionId == mission.missionId);
                            await missionsCollection
                                .doc(matchMission.missionId)
                                .update(<String, dynamic>{
                              'mission_is_clear': false,
                              'mission_is_done': false,
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: baseGrey,
                            elevation: 0,
                          ),
                          child: const Text(
                            'クリアとはいえん',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    const SizedBox(height: 24),
                  ])),
          ],
        ),
      ),
    );
  }
}

class _ChallengesWidget extends StatelessWidget {
  const _ChallengesWidget({Key? key, required this.challengePost})
      : super(key: key);

  final ChallengePost challengePost;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        challengePost.challengeImage == null
            ? const SizedBox()
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: challengePost.challengeImage!),
                ),
              ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: baseGrey, borderRadius: BorderRadius.circular(24)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(child: Text(challengePost.challengeDetail)),
          ),
        ),
      ],
    );
  }
}
