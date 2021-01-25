import 'package:flutter/material.dart';
import 'enso_appbar.dart';
import 'bottom_nav_bar.dart';

class EnsoTimer extends StatefulWidget {
  @override
  _EnsoTimerState createState() => _EnsoTimerState();
}

class _EnsoTimerState extends State<EnsoTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: EnsoBottomNavigationBar(
        timerColor: Color(0xFFEB1555),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EnsoAppBar(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
              margin: EdgeInsets.only(bottom: 50.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFEB1555),
              ),
              child: Text(
                'START',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
