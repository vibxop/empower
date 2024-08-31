import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int selectedindex;
  final void Function(int)? navigateBottomBar;
  const BottomBar({
    super.key,
    required this.selectedindex,
    required this.navigateBottomBar,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: navigateBottomBar,
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
        ]);
  }
}

