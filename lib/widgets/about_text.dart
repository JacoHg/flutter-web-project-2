import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width<800? SizedBox(
      height: screenSize.height * 0.18,
      width: screenSize.width,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenSize.width / 20, right: screenSize.width / 20),
        child: Text(
          '"Welcome to Hidden Pages, an enchanting online sanctuary for bibliophiles and seekers of literary treasures. Nestled within the digital realm, Hidden Pages beckons with its virtual shelves teeming with literary wonders waiting to be discovered. Dive into a world where every page holds the promise of adventure, knowledge, and escape. From timeless classics to contemporary masterpieces, our curated collection spans genres and eras, ensuring there is something to captivate every imagination. Whether you seek solace in the whispers of beloved authors or crave the thrill of unearthing hidden gems, Hidden Pages invites you to embark on a journey through the magic of words. Join us and unlock the door to a universe where stories await behind every click."',
          style: GoogleFonts.poppins(fontSize : 10
          ),
        ),
      ),
    ) :SizedBox(
      height: screenSize.height * 0.20,
      width: screenSize.width,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenSize.width / 20, right: screenSize.width / 20),
        child: Text(
          '"Welcome to Hidden Pages, an enchanting online sanctuary for bibliophiles and seekers of literary treasures. Nestled within the digital realm, Hidden Pages beckons with its virtual shelves teeming with literary wonders waiting to be discovered. Dive into a world where every page holds the promise of adventure, knowledge, and escape. From timeless classics to contemporary masterpieces, our curated collection spans genres and eras, ensuring there is something to captivate every imagination. Whether you seek solace in the whispers of beloved authors or crave the thrill of unearthing hidden gems, Hidden Pages invites you to embark on a journey through the magic of words. Join us and unlock the door to a universe where stories await behind every click."',
          style: GoogleFonts.poppins(fontSize : screenSize.width / 90
          ),
        ),
      ),
    );
  }
}
