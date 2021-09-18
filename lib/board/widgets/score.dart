import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Score extends StatelessWidget {
  const Score(
    this.score,
    this.isMobile,
  );
  final int score;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.start,
        direction: isMobile ? Axis.horizontal : Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Score',
                  style: GoogleFonts.gfsNeohellenic(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$score',
                  style: GoogleFonts.gfsNeohellenic(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
