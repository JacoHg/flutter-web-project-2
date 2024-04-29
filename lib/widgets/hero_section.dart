import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width<800? Column(children: [/*Padding(
              padding: EdgeInsets.only(
                left: screenSize.width / 7.5,
              ),
              child: */Container(
                height: screenSize.height * 0.32,
                width: screenSize.width * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/books.gif'),
                  ),
                ),
              ),
            
             Text(
                'Hiden pages',
                style: GoogleFonts.caveat(fontSize: 50),
              ),
            ],) : Row(
      children: [
        Container(
          height: screenSize.height * 0.65,
          width: screenSize.width * 0.50,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenSize.height / 4),
                child: Text(
                  'Welcome to Hiden pages,',
                  style: GoogleFonts.loveYaLikeASister(
                    fontSize: 40,
                    letterSpacing: 3,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Where a new adventure awaits',
                style: GoogleFonts.loveYaLikeASister(
                  fontSize: 40,
                  letterSpacing: 3,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenSize.width / 7.5,
              ),
              child: Container(
                height: screenSize.height * 0.32,
                width: screenSize.width * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/books.gif'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  /*top: screenSize.height / 30,*/ left: screenSize.width / 8),
              child: Text(
                'Hiden pages',
                style: GoogleFonts.caveat(fontSize: 50),
              ),
            )
          ],
        )
      ],
    );
  }
}
