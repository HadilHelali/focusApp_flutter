import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('focus app'),
        centerTitle: true,
        backgroundColor:Colors.indigo[200],
      ),
      body:Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Text(
              'hello',
            ),
        ),
        ),

    )

  ));

}


