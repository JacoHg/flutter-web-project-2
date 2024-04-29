import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ScreenWidget extends StatelessWidget {
  ScreenWidget({super.key, required this.text, required this.title});

  String text;
  String title;

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    


    return Material(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/books.gif',
              width: screenSize.width * 0.20,
            ),
            SizedBox(
              height: screenSize.height / 30,
            ),
            Text(
              title,
              style: GoogleFonts.kalam(
                  fontSize: screenSize.width / 50,
                  decoration: TextDecoration.underline),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenSize.height / 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenSize.width / 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    width / 30, height / 30, width / 30, height / 30),
                child: Text(
                  text,
                  style: TextStyle(fontSize: screenSize.width / 70),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
