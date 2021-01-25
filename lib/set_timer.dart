import 'package:flutter/material.dart';
import 'enso_appbar.dart';
import 'bottom_nav_bar.dart';

class SetTimer extends StatefulWidget {
  @override
  _SetTimerState createState() => _SetTimerState();
}

class _SetTimerState extends State<SetTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: EnsoBottomNavigationBar(
        settingColor: Color(0xFFEB1555),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EnsoAppBar(),
            Text('Set Timer'),
          ],
        ),
      ),
    );
  }
}
