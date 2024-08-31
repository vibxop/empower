import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        //home
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
    
        //profile
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        
        //report
        BottomNavigationBarItem(
          icon: Icon(Icons.report),
          label: 'Report',
        ),
      ]
    );
  }
}