import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_3/widgets/categoryPopup.dart';
import 'package:flutter_web_3/widgets/category_items.dart';
import 'package:flutter_web_3/mock_data/dummy_data.dart' as mock_data;

class Categorys extends StatelessWidget {
  Categorys({super.key});

  final List<String> imageList = [
    'assets/romance.gif',
    'assets/science.gif',
    'assets/cooking.gif',
    'assets/horror.gif',
    'assets/adventure.gif',
    'assets/fantasy.gif',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    //Open book data
    Future viewBookData(data) => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: CategoryPopup(
                  data: data, closeDialog: () => Navigator.pop(context)));
        });
    return screenSize.width<800? Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.09, right: screenSize.width * 0.09),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Search'), Icon(Icons.search)],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.romanceGenre);
                },
                child:const  CategoryItem(
                    imagePath: 'assets/romance.gif', category: 'Romance'),
              ),
              GestureDetector(
                onTap: (() {
                  viewBookData(mock_data.scienceGenre);
                }),
                child: const CategoryItem(
                    imagePath: 'assets/science.gif', category: 'Science'),
              ),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.cookingGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/cooking.gif', category: 'Cooking'))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.horrorGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/horror.gif', category: 'Horror')),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.adventureGenre);
                },
                child: const CategoryItem(
                    imagePath: 'assets/adventure.gif', category: 'Adventure'),
              ),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.fantasyGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/fantasy.gif', category: 'Fantasy'))
            ],
          )
        ],
      ),
    ): Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.09, right: screenSize.width * 0.09),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Search'), Icon(Icons.search)],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.romanceGenre);
                },
                child: const CategoryItem(
                    imagePath: 'assets/romance.gif', category: 'Romance'),
              ),
              GestureDetector(
                onTap: (() {
                  viewBookData(mock_data.scienceGenre);
                }),
                child: const CategoryItem(
                    imagePath: 'assets/science.gif', category: 'Science'),
              ),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.cookingGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/cooking.gif', category: 'Cooking'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.horrorGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/horror.gif', category: 'Horror')),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.adventureGenre);
                },
                child: const CategoryItem(
                    imagePath: 'assets/adventure.gif', category: 'Adventure'),
              ),
              GestureDetector(
                onTap: () {
                  viewBookData(mock_data.fantasyGenre);
                },
                  child: const CategoryItem(
                      imagePath: 'assets/fantasy.gif', category: 'Fantasy'))
            ],
          )
        ],
      ),
    );
  }
}
