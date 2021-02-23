import 'package:enso_flutter/providers/timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/setting_slider.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    final timer = Provider.of<Timer>(context);
    timer.isStarted = false;
    return Container(
      margin: EdgeInsets.all(48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Text('Minuts: ' + '${timer.minuts}'),
          ),
          SettingSlider(
            value: timer.minuts,
            onMove: (newValue) {
              setState(() {
                timer.minuts = newValue.toInt();
              });
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Text('Seconds: ' + '${timer.seconds}'),
          ),
          SettingSlider(
            value: timer.seconds,
            onMove: (newValue) {
              setState(() {
                timer.seconds = newValue.toInt();
              });
            },
          ),
        ],
      ),
    );
  }
}
