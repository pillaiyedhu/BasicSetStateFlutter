import 'package:day8_state_management_setstate/CustomSlider.dart';
import 'package:day8_state_management_setstate/VideoProgress.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext contex) {
    return MaterialApp(home: SetStateTry());
  }
}

class SetStateTry extends StatefulWidget {

  SetStateTryState createState() {
    return SetStateTryState();
  }
}

class SetStateTryState extends State<SetStateTry>{
  // Style styles = const TextStyle(
  //   color: Colors.teal,
  //   fontSize: 24
  // );
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is State Management with SetState()",style: TextStyle(
          color: Colors.teal, fontSize: 24),
        ),
        centerTitle: true,
      ),

      body: Container(

        child: Center(
          child: Column(
            children: [
              Expanded(
                child: VideoProgress()
              ),
              Positioned(
                bottom: 0,
                left: 0,
                height: 0,
                child: CustomSlider()
              )
            ],
          ),
        ),
      ),
    );
  }
}
