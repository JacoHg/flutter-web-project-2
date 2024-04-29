import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_3/pages/aboutPage.dart';
import 'package:flutter_web_3/pages/contact.dart';
import 'package:flutter_web_3/pages/home_page.dart';
import 'package:flutter_web_3/widgets/about_contact_widget.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyALitGEjMu_WB4eIDz9n7xL7PxTjYE5mHg",
            authDomain: "web-1-5ddfd.firebaseapp.com",
            projectId: "web-1-5ddfd",
            storageBucket: "web-1-5ddfd.appspot.com",
            messagingSenderId: "1036699875567",
            appId: "1:1036699875567:web:25c5e875955a00039ec31a"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      home: Homepage(),
      routes: {'/aboutPage':(context) => const AboutPage(),
      '/contact' :(context) => ScreenWidgetContact(title: 'Contact us')},
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

