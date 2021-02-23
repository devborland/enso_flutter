import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/timer.dart';
import '../widgets/button.dart';
import '../widgets/circle_timer.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    final timer = Provider.of<Timer>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text('${timer.minuts}:${timer.seconds}'),
          ),
          CircleTimer(
            duration: timer.duraion,
            controller: timer.controller,
            onStart: timer.onStart,
            onComplete: timer.onComplete,
          ),
          Button(onPressed: timer.toggleStartButton),
        ],
      ),
    );
  }
}
