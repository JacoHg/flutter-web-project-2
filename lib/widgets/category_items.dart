import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String category;

  const CategoryItem(
      {super.key, required this.imagePath, required this.category});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Material(
        elevation: 12,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          /*height: screenSize.height * 0.15,*/
          width: 250,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    width: screenSize.width / 15,
                  )),
              /*SizedBox(
                  width: screenSize.width / 45,
                ),*/
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  category,
                  style: GoogleFonts.loveYaLikeASister(
                      fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
