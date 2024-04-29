import 'package:flutter/material.dart';
import 'package:flutter_web_3/widgets/info_text.dart';
import 'package:flutter_web_3/widgets/info_bott_column.dart';
import 'package:flutter_web_3/constants/colors.dart';

class InfoBottom extends StatelessWidget {
  const InfoBottom({super.key});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width < 800
        ? Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin:  FractionalOffset(0.2, 0.2),
                  end:  FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomBarColumn(
                        heading: 'ABOUT',
                        s1: 'Contact Us',
                        s2: 'About Us',
                        s3: 'Address',
                      ),
                      BottomBarColumn(
                        heading: 'Help',
                        s1: 'Payment',
                        s2: 'Cancellation',
                        s3: 'Other',
                      ),
                      BottomBarColumn(
                        heading: 'SOCIAL',
                        s1: 'Twitter',
                        s2: 'Facebook',
                        s3: 'Tik-Tok',
                      ),
                    ]),
              ],
            ))
        : Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin:  FractionalOffset(0.2, 0.2),
                  end:  FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            padding: const EdgeInsets.all(30),
            child: screenSize.width < 800
                ? Column(
                    children: [
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomBarColumn(
                              heading: 'ABOUT',
                              s1: 'Contact Us',
                              s2: 'About Us',
                              s3: 'Careers',
                            ),
                            BottomBarColumn(
                              heading: 'Help',
                              s1: 'Apointment',
                              s2: 'Payment',
                              s3: 'Cancellation',
                            ),
                            BottomBarColumn(
                              heading: 'SOCIAL',
                              s1: 'Twitter',
                              s2: 'Facebook',
                              s3: 'Tik-Tok',
                            ),
                          ])
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BottomBarColumn(
                            heading: 'ABOUT',
                            s1: 'Contact Us',
                            s2: 'About Us',
                            s3: 'Careers',
                          ),
                          BottomBarColumn(
                            heading: 'Help',
                            s1: 'Apointment',
                            s2: 'Payment',
                            s3: 'Cancellation',
                          ),
                          BottomBarColumn(
                            heading: 'SOCIAL',
                            s1: 'Twitter',
                            s2: 'Facebook',
                            s3: 'Tik-Tok',
                          ),
                          Container(
                            color: colorText,
                            width: 2,
                            height: 150,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InfoText(
                                type: 'Email',
                                text: 'JamesJJ@gmail.com',
                              ),
                              const SizedBox(height: 5),
                              InfoText(
                                type: 'Address',
                                text: '156, This Road, DDD, MN - 77484',
                              )
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: colorText,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Copyright © 2024 | HiddenPages',
                        style: TextStyle(
                          color: colorText,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
          );
  }
}
