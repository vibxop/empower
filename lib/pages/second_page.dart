import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Page"),
        backgroundColor: Colors.deepPurple[300],
      ),
    );
  }
}