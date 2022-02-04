import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KikoffAgenda4 extends StatelessWidget {
  const KikoffAgenda4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:24,top: 161,right: 24 ),
      padding: EdgeInsets.fromLTRB(11, 11, 12, 11),
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 48, 62, 1),
        borderRadius: BorderRadius.all(Radius.circular(16.0)) ,
      ),
      width: 327,
      height: 145.0,
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(24, 26, 32, 1),
            borderRadius: BorderRadius.all(Radius.circular(15.0)) ,
        ),
        padding: EdgeInsets.only(left:14,top:10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
                'Kickoff agenda',
              style:TextStyle(
                fontFamily: 'Urbanist',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 21.0,
                letterSpacing: 0.48 ,
                color: Colors.white,
              ),
            ),
            Text(
                "Remember to include Jean's notes",
              style:TextStyle(
                fontFamily: 'Spartan',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                //height: 15.68,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('9.45 AM - 11.45 AM'),
              ],
            ),
          ],

        ),
        width: 304,
        height: 123.0,

      ),
    );
  }
}
