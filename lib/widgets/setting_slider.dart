import 'package:flutter/material.dart';

class SettingSlider extends StatelessWidget {
  SettingSlider({
    @required this.value,
    @required this.onMove,
  });
  final double value;
  final Function onMove;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 3.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
        overlayColor: Color(0x29EB1555),
        thumbColor: Color(0xFFEB1555),
        activeTrackColor: Colors.white,
        inactiveTrackColor: Color(0xFF8D8E98),
      ),
      child: Slider(
        value: value.toDouble(),
        min: 0.0,
        max: 60.0,
        onChanged: onMove,
      ),
    );
  }
}
