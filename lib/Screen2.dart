import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // #181A20
        backgroundColor: const Color.fromARGB(0xFF, 0x18, 0x1A, 0x20),
        body: SizedBox.expand(
            child: Container(
                child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Positioned(
              child: Image.asset("assets/Screen2/Illustration.png"),
            ),
            Positioned(
              top: 0,
              child: Image.asset("assets/Screen2/Oval1.png"),
            ),
            Positioned(
              top: 250,
              child: Image.asset("assets/Screen2/Oval2.png"),
            ),
            Positioned(
                top: 150,
                left: 50,
                child: Text("Focused,",
                    style: GoogleFonts.spartan(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32))),
            Positioned(
                top: 200,
                left: 50,
                child: Text("motivated.",
                    style: GoogleFonts.spartan(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32)))
          ],
        ))));
  }
}
