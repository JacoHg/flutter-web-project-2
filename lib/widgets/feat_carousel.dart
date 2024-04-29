import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class FeaturedCarousel extends StatefulWidget {
  const FeaturedCarousel({super.key});

  @override
  State<FeaturedCarousel> createState() => _FeaturedCarouselState();
}

class _FeaturedCarouselState extends State<FeaturedCarousel> {
  int _current = 0;

  final List<String> genres = [
    'Adventure',
    'Fantasy',
    'Horror',
    'Romance',
  ];

  final List<String> images = [
    'assets/Adventure.png',
    'assets/fantasy.jpg',
    'assets/horror.jpg',
    'assets/romance.jpg',
  ];

  List<Widget> generateImageTiles() {
    return images
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImageTiles(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 18 / 8,
              onPageChanged: (index, reason) {setState(() {
                _current = index;
              });},
            ),
          ),
          AspectRatio(
            aspectRatio: 18 / 8,
            child: Center(
              child: Text(
                genres [_current],
                style: GoogleFonts.loveYaLikeASister(
                    fontSize: screenSize.width / 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
