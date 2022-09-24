import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:spajam2022/common/colors.dart';

class CompleteIndicator extends StatelessWidget {
  const CompleteIndicator({required this.total, required this.clearNumber});

  final int total;
  final int clearNumber;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120.0,
      lineWidth: 18.0,
      animation: true,
      percent: clearNumber / total,
      center: Text(
        "$clearNumber / $total",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
      footer: clearNumber / total == 1
          ? SizedBox(
              width: 200,
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_DzBNfa.json'),
            )
          : const SizedBox(),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: baseGreen,
    );
  }
}
