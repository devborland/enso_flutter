import 'package:flutter/material.dart';
import '../widgets/setting_slider.dart';

var seconds = 10.0;
var minuts = 10.0;

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text('Minuts: ' + '${minuts.toInt()}'),
            ),
            SettingSlider(
              value: minuts,
              onMove: (newValue) {
                setState(() {
                  minuts = newValue;
                });
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text('Seconds: ' + '${seconds.toInt()}'),
            ),
            SettingSlider(
              value: seconds,
              onMove: (newValue) {
                setState(() {
                  seconds = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
