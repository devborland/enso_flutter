import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final bool isStop;
  final Function onPressed;
  Button({this.isStop, this.onPressed});

  @override
  Widget build(BuildContext context) {
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
          color: isStop ? Color(0x11EB1555) : Color(0x00EB1555),
        ),
        child: Text(
          isStop ? ' STOP ' : 'START',
          style: TextStyle(fontSize: 24.0, color: Colors.amber.shade200),
        ),
      ),
    );
  }
}
