import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width<800? SizedBox(
      height: 40,
      width: screenSize.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'A little about us !',
          style: GoogleFonts.kalam(
              fontSize: 20,
              decoration: TextDecoration.underline),
          textAlign: TextAlign.center,
        ),
      ),
    ) : SizedBox(
      height: screenSize.height / 15,
      width: screenSize.width,
      child: Text(
        'A little about us !',
        style: GoogleFonts.kalam(
            fontSize: screenSize.width / 50,
            decoration: TextDecoration.underline),
        textAlign: TextAlign.center,
      ),
    );
  }
}
