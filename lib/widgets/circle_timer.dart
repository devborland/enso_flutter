import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class CircleTimer extends StatelessWidget {
  final int duration;
  final CountDownController controller;
  final double timerRadius;
  final Function onStart;
  final Function onComplete;

  CircleTimer({
    this.duration,
    this.timerRadius,
    this.controller,
    this.onComplete,
    this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircularCountDownTimer(
        duration: duration,
        controller: controller,
        width: timerRadius,
        height: timerRadius,
        color: Colors.amber.shade200,
        fillColor: Color(0xFFEB1555),
        strokeWidth: 4.0,
        strokeCap: StrokeCap.round,
        textStyle: TextStyle(
            fontSize: 34.0,
            color: Colors.amber.shade200,
            fontWeight: FontWeight.bold),
        textFormat: (duration < 3600)
            ? CountdownTextFormat.MM_SS
            : CountdownTextFormat.HH_MM_SS,
        isReverse: false,
        isReverseAnimation: false,
        isTimerTextShown: true,
        autoStart: false,
        onStart: onStart,
        onComplete: onComplete,
      ),
    );
  }
}
