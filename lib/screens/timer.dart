import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import '../widgets/circular_timer.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  int _duration = 35;
  CountDownController _controller = CountDownController();
  bool _isStop = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularCountDownTimer(
            duration: _duration,
            controller: _controller,
            width: MediaQuery.of(context).size.width / 1.66,
            height: MediaQuery.of(context).size.height / 1.66,
            color: Colors.amber.shade200,
            fillColor: Color(0xFFEB1555),
            strokeWidth: 20.0,
            strokeCap: StrokeCap.round,
            textStyle: TextStyle(
                fontSize: 34.0,
                color: Colors.amber.shade200,
                fontWeight: FontWeight.bold),
            textFormat: (_duration < 3600)
                ? CountdownTextFormat.MM_SS
                : CountdownTextFormat.HH_MM_SS,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
            onStart: () {
              print('Countdown Started');
              _isStop = true;
            },
            onComplete: () {
              print('Countdown Ended');
              setState(() {
                _isStop = false;
              });
            },
          ),
          TextButton(
            onPressed: () {
              print('Stopped:' + '$_isStop');
              setState(
                () {
                  if (_isStop) {
                    _isStop = false;
                    _controller.pause();
                  } else {
                    _isStop = true;
                    _controller.start();
                  }
                },
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xFFEB1555),
              ),
              child: Text(
                _isStop ? ' STOP ' : 'START',
                style: TextStyle(fontSize: 24.0, color: Colors.amber.shade200),
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
