import 'package:empower/pages/home_page.dart';
import 'package:empower/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}                          