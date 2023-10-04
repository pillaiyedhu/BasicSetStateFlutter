import 'package:flutter/material.dart';

late VideoProgressState videoProgressState;

class VideoProgress extends StatefulWidget {
  // ignore: no_logic_in_create_state
  VideoProgressState createState() {
    videoProgressState = VideoProgressState();

    return videoProgressState;
  }
}

class VideoProgressState extends State<VideoProgress> {
  var progress = 10.00;

  Widget build(BuildContext context) {
    return Center(
        child: Text("Video Progress ${progress.toStringAsFixed(2)} %"));
  }
}
