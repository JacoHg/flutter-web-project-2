import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_3/models/book.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class PopularPicks extends StatefulWidget {
  const PopularPicks({super.key});

  @override
  State<PopularPicks> createState() => _PopularPicksState();
}

class _PopularPicksState extends State<PopularPicks> {
  List<Book> popularList = [
    Book(
      name: 'The Hobbit',
      price: 'R 88',
      genre: 'Adventure/Fantasy',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546071216i/5907.jpg',
      rating: '9.0'),
    Book(
      name: 'Around the World in Eighty Days',
      price: 'R 400',
      genre: 'Fantasy',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1684014860i/54479.jpg',
      rating: '8.8'),
    Book(
      name: 'The Princess Bride',
      price: 'R 120',
      genre: 'Fantasy/Romance',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1327903636i/21787.jpg',
      rating: '8.2'),
    Book(
      name: 'Two Twisted Crowns',
      price: 'R 300',
      genre: 'Horror/Fantasy',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1670090073i/63910262.jpg',
      rating: '9.4'),
    Book(
      name: 'Secrets of the Octopus',
      price: 'R 300',
      genre: 'Science',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1687769447i/179270378.jpg',
      rating: '9.0'),
    Book(
      name: 'Baking Yesteryear',
      price: 'R 300',
      genre: 'Cooking',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1674347889i/63836013.jpg',
      rating: '9.2'),
    Book(
      name: 'Harry Potter and the Sorcerers Stone',
      price: 'R 560',
      genre: 'Adventure/Fantasy',
      imagePath:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1598823299i/42844155.jpg',
      rating: '9.4'),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width<800? SizedBox(
      height: 360,
      child: ScrollSnapList(
        itemBuilder: _buildListItem,
        itemCount: popularList.length,
        itemSize: 75,
        onItemFocus: (index) {},
        dynamicItemSize: true,
      ),
    ): SizedBox(
      height: 660,
      child: ScrollSnapList(
        itemBuilder: _buildListItem,
        itemCount: popularList.length,
        itemSize: 150,
        onItemFocus: (index) {},
        dynamicItemSize: true,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    var screenSize = MediaQuery.of(context).size;
    Book book = popularList[index];
    return screenSize.width<800? SizedBox(
      width: 150,
      height: 250,
      child: Card(
        color: Colors.white,
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                book.imagePath,
                fit: BoxFit.cover,
              ),
              Text(
                book.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                book.genre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 10
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                book.rating,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 10
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                book.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 10
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('More info...', style: TextStyle(fontSize: 10),textAlign: TextAlign.start,),
              )
            ],
          ),
        ),
      ),
    ): SizedBox(
      width: 300,
      height: 500,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                book.imagePath,
                fit: BoxFit.cover,
              ),
              Text(
                book.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenSize.width / 75),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                book.genre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                book.rating,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                book.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('More info...'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
