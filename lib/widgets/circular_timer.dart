import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CircularTimer extends StatelessWidget {
  final int duration;
  static get start {
    CountDownController().start();
  }

  CircularTimer({this.duration});

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: duration,
      controller: CountDownController(),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.grey[300],
      fillColor: Color(0xFFEB1555),
      // backgroundColor: Colors.purple[500],
      strokeWidth: 4.0,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(
          fontSize: 33.0, color: Colors.grey[300], fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: false,
      onStart: () {
        print('Countdown Started');
      },
      onComplete: () {
        print('Countdown Ended');
      },
    );
  }
}
