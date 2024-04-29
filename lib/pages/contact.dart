import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ScreenWidgetContact extends StatelessWidget {
  ScreenWidgetContact({super.key, required this.title});

  
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email : JamesJJ@gmail.com ',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Address : 156, This Road, DDD, MN - 77484',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Tell : 0099337722',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: screenSize.width / 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Tik-tok : HiddenPages.tiktok.com',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Facebook : HiddenPages.facebook.com',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Twitter : HiddenPages.twitter.com',
                            style: TextStyle(fontSize: screenSize.width / 70),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
