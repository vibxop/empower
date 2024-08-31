// view_contacts.dart
import 'package:empower/database/contact_data.dart';
import 'package:flutter/material.dart';

class ViewContacts extends StatefulWidget {
  @override
  _ViewContactsState createState() => _ViewContactsState();
}

class _ViewContactsState extends State<ViewContacts> {
  List<Map<String, dynamic>> contacts = [];

  @override
  void initState() {
    super.initState();
    _loadContacts();
  }

  void _loadContacts() {
    setState(() {
      contacts = DatabaseService.getContacts();
    });
  }

  void _deleteAllContacts() async {
    await DatabaseService.deleteAllContacts(); // Delete all contacts from Hive
    _loadContacts(); // Reload contacts after deletion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Contacts"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: _deleteAllContacts, // Button to delete all contacts
          ),
        ],
      ),
      body: contacts.isEmpty
          ? Center(child: Text("No contacts available"))
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ListTile(
                  title: Text(contact['name'] ?? 'Unnamed'),
                  subtitle: Text(contact['number'] ?? 'No number'),
                );
              },
            ),
    );
  }
}
