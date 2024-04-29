import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [gradientStartColor, gradientEndColor])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 13), fontSize: 22),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Color.fromARGB(255, 14, 14, 13),
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'About',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 13), fontSize: 22),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Color.fromARGB(255, 14, 14, 13),
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Services',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 13), fontSize: 22),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Color.fromARGB(255, 14, 14, 13),
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 13), fontSize: 22),
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | HiddenPages',
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 13),
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
