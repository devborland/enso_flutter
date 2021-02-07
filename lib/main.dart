import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'screens/setting.dart';
import 'screens/stats.dart';
import 'screens/timer.dart';

void main() => runApp(Enso());

class Enso extends StatefulWidget {
  @override
  _EnsoState createState() => _EnsoState();
}

class _EnsoState extends State<Enso> {
  int _currentScreen = 0;
  List<Widget> _screens = [
    Timer(),
    Setting(),
    Stats(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1E33),
        scaffoldBackgroundColor: Color(0xFF1D1E33),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1D1E33),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'MediTimer',
            style: TextStyle(color: Colors.amber.shade200),
          )),
        ),
        body: _screens[_currentScreen],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.amber.shade200,
          currentIndex: _currentScreen,
          fixedColor: Color(0xFFEB1555),
          onTap: (int index) {
            setState(() {
              _currentScreen = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clock),
              label: 'timer',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.slidersH),
              label: 'setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartBar),
              label: 'stats',
            ),
          ],
        ),
      ),
    );
  }
}
