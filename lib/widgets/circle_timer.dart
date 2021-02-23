import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CircleTimer extends StatelessWidget {
  final int duration;
  final CountDownController controller;

  final Function onStart;
  final Function onComplete;

  CircleTimer({
    this.duration,
    this.controller,
    this.onComplete,
    this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    final timerRadius = MediaQuery.of(context).size.width / 1.7;
    return CircularCountDownTimer(
      duration: duration,
      controller: controller,
      width: timerRadius,
      height: timerRadius,
      ringColor: Colors.amber.shade200,
      fillColor: Color(0xFFEB1555),
      strokeWidth: 5.0,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(
          fontSize: 34.0,
          color: Colors.amber.shade200,
          fontWeight: FontWeight.bold),
      textFormat: (duration < 3600)
          ? CountdownTextFormat.MM_SS
          : CountdownTextFormat.HH_MM_SS,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: false,
      onStart: onStart,
      onComplete: onComplete,
    );
  }
}
