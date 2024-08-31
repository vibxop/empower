// database_service.dart
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseService {
  static const String _boxName = "contactsBox";

  // Initialize Hive and open a box
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(_boxName);
  }

  // Save contact to Hive
  static Future<void> saveContact(String name, String number) async {
    final box = Hive.box(_boxName);
    await box.add({'name': name, 'number': number});
  }

  // Retrieve all contacts from Hive
  static List<Map<String, dynamic>> getContacts() {
    final box = Hive.box(_boxName);
    return box.values.map((e) => Map<String, dynamic>.from(e)).toList();
  }

  static Future<void> deleteAllContacts() async {
    final box = Hive.box(_boxName);
    await box.clear();
  }
}
