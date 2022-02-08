import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartState extends StatefulWidget {
  double _param1;
  double get param1 => _param1;
  set param1(double param1) {
    _param1 = param1;
  }

  double _param2;
  double get param2 => _param2;
  set param2(double param2) {
    _param2 = param2;
  }

  String _day;

  String get day => _day;

  set day(String day) {
    _day = day;
  }
  ChartState(this._param1, this._param2,this._day, {Key? key}) : super(key: key);

  @override
  _ChartStateState createState() => _ChartStateState();
}

class _ChartStateState extends State<ChartState> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0,20.0,0,10.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(43, 48, 62, 1),
              borderRadius: BorderRadius.all(Radius.circular(50.0)) ,
            ),
            width: 6.0,
            height: 130.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin:  Alignment.topRight ,
                      end: Alignment.bottomLeft ,
                      colors: [
                        Color.fromRGBO(92, 36, 252, 1),
                        Color.fromRGBO(157, 122, 255, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)) ,
                  ),
                  width: 6.0,
                  height: (widget.param1 *1.30),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin:  Alignment.topRight ,
                      end: Alignment.bottomLeft ,
                      colors: [
                        Color.fromRGBO(244, 71, 113, 1),
                        Color.fromRGBO(253, 41, 181, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)) ,
                  ),
                  width: 6.0,
                  height: (widget.param2 *1.30),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              widget.day,
              style:TextStyle(
                fontFamily: 'Urbanist',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 10.0,
                color: Colors.white,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
