import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

/********************** The Event Agenda Widget  ****************************************/
class EventAgenda extends StatelessWidget {
  const EventAgenda({
    Key? key,
    required this.eventitle,
    required this.description,
    required this.time,
  }) : super(key: key);

  final String eventitle;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            // Opacity : 0xFF , #54 51 D6
            Color.fromARGB(0xFF, 0x54, 0x51, 0xD6),
            // Opacity : 0xFF , #8B 78 FF
            Color.fromARGB(0xFF, 0x8B, 0x78, 0xFF),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 114,
      width: 241,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(eventitle,
              style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          Text(description,
              style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300)),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(time,
                    style: GoogleFonts.urbanist(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300))
              ])
        ],
      ),
    );
  }
}

/***********************************************************************************************/

