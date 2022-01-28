// ignore_for_file: prefer_const_constructors

import 'package:example/Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus App',
      home: Screen2(),
    );
  }
}

/* void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('focus app'),
      centerTitle: true,
      backgroundColor: Colors.indigo[200],
    ),
    body: Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: const Center(
        child: Text(
          'hello',
        ),
      ),
    ),
  ))
      );
} */
