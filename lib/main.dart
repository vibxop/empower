import 'package:empower/database/contact_data.dart';
import 'package:empower/pages/add_contacts.dart';
import 'package:empower/pages/home_page.dart';
import 'package:empower/pages/index_page.dart';
import 'package:empower/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseService.init(); // Initialize Hive
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      routes: {
        '/secondpage': (context) => ProfilePage(),
        '/home_page': (context) => HomePage(),
        '/contact_page': (context) => AddContacts(),
      },
    );
  }
}
