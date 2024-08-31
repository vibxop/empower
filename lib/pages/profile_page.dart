import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Scaffold(
        body: Container(
          child: Column(children: [
            Text("Profile Page"),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/contact_page"),
              child: Text("Add Contacts"),
            ),
          ]),
        ),
      ),
    );
  }
}
