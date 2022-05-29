import 'package:example/Accueil/Note.dart';
import 'package:example/screen4/focustimer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
class Accueil extends StatefulWidget{
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    final Paint paint = Paint();
    paint.color = Color(0xff1967d2);
    paint.style = PaintingStyle.fill;
    Canvas? canvas;

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            shape: Border(
                bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                )
            ),
              elevation: 0.0,
              backgroundColor: Colors.grey[900],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(2),
              child:Container(

              child: TabBar(
                indicatorColor: Color(0xFFF44771),
                labelColor: Colors.white,
                unselectedLabelColor:Color(0xFF696D78),
                indicator: DotIndicator(
                  color: Color(0xFFF44771),
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                isScrollable :true,
                tabs: [
                  Tab(child:Text("Notes",style: TextStyle(fontFamily: "Spartan",fontWeight: FontWeight.w700,fontSize: 16),)),
                  Tab(child:Text("Calendar",style: TextStyle(fontFamily: "Spartan",fontWeight: FontWeight.w700,fontSize: 16))),
                  Tab(child:Text("Timer",style: TextStyle(fontFamily: "Spartan",fontWeight: FontWeight.w700,fontSize: 16))),
                  Tab(child:Text("Music",style: TextStyle(fontFamily: "Spartan",fontWeight: FontWeight.w700,fontSize: 16))),
                ],
              ),
            ),
          )),
          body: TabBarView(
            children: [
              Note(),
              Icon(Icons.directions_transit),
              FocusTimer(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
        ),
      );
  }
}