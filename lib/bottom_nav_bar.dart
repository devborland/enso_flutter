import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'set_timer.dart';

class EnsoBottomNavigationBar extends StatelessWidget {
  EnsoBottomNavigationBar(
      {this.timerColor, this.settingColor, this.progressColor});

  final Color timerColor;
  final Color settingColor;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.hourglassStart,
              size: 30.0,
              color: timerColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.slidersH,
              size: 30.0,
              color: settingColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SetTimer()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.chartLine,
              size: 30.0,
              color: progressColor,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
