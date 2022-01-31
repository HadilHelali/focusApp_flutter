import 'package:flutter/material.dart';
import 'package:focusapp/screen4/focustimer.dart';
import 'package:focusapp/screen5/WeekAdavancement.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/screen4',
    routes: {
      '/screen4': (context) => const FocusTimer(),
    },
  ));
}





