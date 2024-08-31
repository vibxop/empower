import 'package:empower/utils/bottombar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("1st page"),
      backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomBar(),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.woman_2_rounded,
                size: 48, 
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                //goto home page

              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to second page"),
          onPressed: () {
            //navigate to 2nd page
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}

