import 'package:flutter/material.dart';
import 'package:flutter_web_3/widgets/about_contact_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
        text:
            "Welcome to Hidden Pages, an enchanting online sanctuary for bibliophiles and seekers of literary treasures. Nestled within the digital realm, Hidden Pages beckons with its virtual shelves teeming with literary wonders waiting to be discovered. Dive into a world where every page holds the promise of adventure, knowledge, and escape. From timeless classics to contemporary masterpieces, our curated collection spans genres and eras, ensuring there is something to captivate every imagination. Whether you seek solace in the whispers of beloved authors or crave the thrill of unearthing hidden gems, Hidden Pages invites you to embark on a journey through the magic of words. Join us and unlock the door to a universe where stories await behind every click.",
        title: 'A little about us !');
  }
}
