import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/timer.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  Button({this.onPressed});

  @override
  Widget build(BuildContext context) {
    final timer = Provider.of<Timer>(context);
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xFFEB1555),
            width: 4.0,
          ),
          color: timer.isStarted ? Color(0xFFEB1555) : Color(0x00EB1555),
        ),
        child: Text(
          timer.isStarted ? ' STOP ' : 'START',
          style: TextStyle(fontSize: 24.0, color: Colors.amber.shade200),
        ),
      ),
    );
  }
}
