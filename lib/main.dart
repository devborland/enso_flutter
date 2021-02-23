import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'page/setting_page.dart';
import 'page/stats_page.dart';
import 'page/timer_page.dart';
import 'providers/timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentScreen = 0;
  List<Widget> _screens = [
    TimerPage(),
    Setting(),
    Stats(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Timer()),
      ],
      child: MaterialApp(
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
                style: TextStyle(color: Colors.amber.shade100),
              ),
            ),
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
      ),
    );
  }
}
