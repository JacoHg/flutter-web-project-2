import 'package:flutter/material.dart';
import 'package:flutter_web_3/widgets/about_header.dart';
import 'package:flutter_web_3/widgets/about_text.dart';
import 'package:flutter_web_3/widgets/app_bar.dart';
import 'package:flutter_web_3/widgets/bottom_bar.dart';
import 'package:flutter_web_3/widgets/category.dart';
import 'package:flutter_web_3/widgets/category_header.dart';
import 'package:flutter_web_3/widgets/feat_carousel.dart';
import 'package:flutter_web_3/widgets/feat_header.dart';
import 'package:flutter_web_3/widgets/hero_section.dart';
import 'package:flutter_web_3/widgets/menu_drawer.dart';
import 'package:flutter_web_3/widgets/popular_picks.dart';
import 'package:flutter_web_3/widgets/popular_picks_header.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: screenSize.width<800? AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(_opacity),
        title: const Text(
                    'Hidden Pages',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),

      ) : PreferredSize(
        preferredSize: Size(screenSize.width, 75),
        child: TopBarContent(_opacity),
      ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          const HeroSection(),
          const AboutHeader(),
          const AboutText(),
          const SizedBox(height: 20,),
          const FeaturedHeader(),
          const FeaturedCarousel(),
          SizedBox(height: screenSize.height / 30,),
          const PopularPikHeader(),
          const PopularPicks(),
          SizedBox(height: screenSize.height / 30,),
          const CategoryHeader(),
          Categorys(),
          SizedBox(height: screenSize.height / 10,),
          const InfoBottom(),
        ],),
      ),
    );
  }
}
