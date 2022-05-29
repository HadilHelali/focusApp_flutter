import 'package:example/Accueil/Accueil.dart';
import 'package:example/screen5/Chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:example/UnicornOutlineButton.dart';
class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  final pages = [
    Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Screen 2.png"), fit: BoxFit.cover)
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Screen 5.png"), fit: BoxFit.cover)
      ),
    ),
    Stack(
      children:[Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Screen 6.png"), fit: BoxFit.cover),

        ),

      ),
        Positioned(
            top:MediaQuery.of(context).size.height*0.9,
            left:MediaQuery.of(context).size.height*0.11,
          child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              UnicornOutlineButton(
                strokeWidth: 2.0,
                radius: 24.0,
                gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
                child: Text('Get Started', style: TextStyle(fontSize: 16.0)),
                onPressed: () {Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Accueil()),
                );
                },
              ),

            ]),
        ),
      ],
    ),




  ];
  return new MaterialApp(
      home: new Scaffold(
          body: LiquidSwipe(
            pages: pages,
            fullTransitionValue: 500,
            enableSideReveal: true,
          )));
}}


