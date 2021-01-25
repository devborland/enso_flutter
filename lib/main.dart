import 'package:flutter/material.dart';
import 'enso_timer.dart';

void main() => runApp(Enso());

class Enso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1E33),
        scaffoldBackgroundColor: Color(0xFF1D1E33),
      ),
      home: EnsoTimer(),
    );
  }
}
