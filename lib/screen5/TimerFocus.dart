import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerFocus extends StatefulWidget {
  const TimerFocus({Key? key}) : super(key: key);

  @override
  _TimerFocusState createState() => _TimerFocusState();
}

class _TimerFocusState extends State<TimerFocus> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Let's focus for"),
          CircularProgressIndicator(
            color: Color.fromRGBO(43, 48, 62, 1) ,
          )
        ],
      ),
    );
  }
}
