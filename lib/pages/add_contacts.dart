import 'package:empower/database/contact_data.dart';
import 'package:empower/pages/view_contacts.dart';
import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  AddContacts({super.key});

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  final _name = TextEditingController();
  final _number = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Key to manage the form state

  void _onSubmit() async {
    if (_formKey.currentState!.validate()) {
      // Validate the form
      debugPrint(_name.text + "\n" + _number.text);
      await DatabaseService.saveContact(
          _name.text, _number.text); // Save contact to Hive
      setState(() {
        _name.clear();
        _number.clear();
      });
    } else {
      debugPrint("Validation failed");
    }
  }

  void _viewContacts() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ViewContacts()), // Navigate to ViewContacts page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empower"),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey, // Assign the key to the Form
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null; // Input is valid
                },
                controller: _name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  hintText: "Enter family member's name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a phone number';
                  }
                  if (!RegExp(r'^\d+$').hasMatch(value)) {
                    return 'Please enter a valid phone number';
                  }
                  if (value.length != 10) {
                    return 'Phone number must be 10 digits long';
                  }
                  return null; // Input is valid
                },
                keyboardType: TextInputType.phone,
                controller: _number,
                decoration: InputDecoration(
                  label: Text("Phone No"),
                  hintText: "Enter family member's number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onSubmit,
                child: Text("Submit"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _viewContacts, // Button to view saved contacts
                child: Text("View Contacts"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
