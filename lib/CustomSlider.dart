import 'package:day8_state_management_setstate/VideoProgress.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  CustomSliderState createState() {
    return CustomSliderState();
  }
}

class CustomSliderState extends State<CustomSlider> {
  var initialValue = 0.1;

  void onChangeValue(double val) {
    setState(() {
      initialValue = val;
    });

    videoProgressState.setState(() {
      videoProgressState.progress = val*100;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Slider(value: initialValue, onChanged: onChangeValue),
    );
  }
}
