import 'package:flutter/material.dart';

import '../getStartedScreen/getStrted1.dart';
import 'categories.dart';

class MyBottomNavigationBarApp extends StatefulWidget {
  @override
  _MyBottomNavigationBarAppState createState() =>
      _MyBottomNavigationBarAppState();
}

class _MyBottomNavigationBarAppState extends State<MyBottomNavigationBarApp> {
  int _selectedIndex = 0; // Initially, the first tab is selected.
  final List<Widget> _screens = [
    GetStarted1(),
    Categories(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.amberAccent,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetStarted1()));
              },
              child: Image.asset(
                'asset/images/HomeIcon.png',
                height: 50,
                width: 50,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: Image.asset(
                'asset/images/CategoriesIcon.png',
                height: 50,
                width: 50,
              ),
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Image.asset(
                'asset/images/FavouriteIcon.png',
                height: 50,
                width: 50,
              ),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Image.asset(
                'asset/images/More Icon and Text.png',
                height: 50,
                width: 50,
              ),
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Colors.blue, // Change the color of the selected item.
        onTap: _onItemTapped,
      ),
    ); // );
  }
}
