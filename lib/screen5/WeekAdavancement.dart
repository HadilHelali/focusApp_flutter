import 'ChartState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeekAdvancement extends StatelessWidget {
  const WeekAdvancement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 10.0/*to modify later on*/),
                child: Text(
                    'The Week Advancement',
                    style:TextStyle(
                      fontFamily: 'Spartan',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      height: 8.0,/*16.0 to review further after putting other components*/
                      color: Colors.white,
                    ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChartState(20.0, 30.0, 'Mon'),
                ChartState(50.0, 10.0, 'Tue'),
                ChartState(60.0, 3.0, 'Wed'),
                ChartState(70.0, 15.0, 'Thu'),
                ChartState(30.0, 42.0, 'Fri'),
                ChartState(60.0, 21.5, 'Sat'),
                ChartState(50.0, 40.0, 'Sun'),
              ],
            )
          ],
      ),
    );
  }
}
