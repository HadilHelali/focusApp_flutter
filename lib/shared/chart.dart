import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(43, 48, 62, 1),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            width: 6.0,
            height: 130.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(92, 36, 252, 1),
                        Color.fromRGBO(157, 122, 255, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  width: 6.0,
                  height: 40.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(244, 71, 113, 1),
                        Color.fromRGBO(253, 41, 181, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  width: 6.0,
                  height: 49.0,
                ),
              ],
            ),
          ),
          Container(
            child: const Text(
              'Mon',
              style: TextStyle(
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
