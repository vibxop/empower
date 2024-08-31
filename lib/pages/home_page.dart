import 'package:empower/utils/bottombar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("EmPower"),
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //map container
            Container(
              height: 450,
              width: double.infinity,
              color: Colors.deepPurple[300],

            ),
            //buttons container
            Container(
              height: 235,
              color: Colors.deepPurple[100],
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //button1
                      ElevatedButton(
                        onPressed: () {
                          //Call Family
                        }, 
                        child: Text("Call Family"),
                        
                      ),
                      //button2
                      ElevatedButton(
                        onPressed: () {
                          //Call Family
                        }, 
                        child: Text("Call Police"),
                        
                      ),
                    ],
                    
                  ),
                  SizedBox(height: 20),
                  //button3
                  ElevatedButton(
                        onPressed: () {
                          //SOS button
                        }, 
                        child: Text(
                          "S O S",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),  
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Tap SOS in case of emergency!",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }
}

