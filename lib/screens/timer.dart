import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:enso_flutter/widgets/button.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_timer.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  int _duration = 5;
  CountDownController _controller = CountDownController();
  bool _isStop = false;

  void _toggleStartButton() {
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
  }

  void _onTimerStart() {
    print('Countdown Started');
    _isStop = true;
  }

  void _onTimerComplete() {
    print('Countdown Ended');
    print(_controller.getTime());
    setState(() {
      _isStop = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _timerRadius = MediaQuery.of(context).size.width / 1.7;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleTimer(
            duration: _duration,
            timerRadius: _timerRadius,
            controller: _controller,
            onStart: _onTimerStart,
            onComplete: _onTimerComplete,
          ),
          SizedBox(height: 1.0),
          Button(isStop: _isStop, onPressed: _toggleStartButton),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
