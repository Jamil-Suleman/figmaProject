import 'package:flutter/material.dart';

class MyBottomNavigationBarApp extends StatefulWidget {
  @override
  _MyBottomNavigationBarAppState createState() =>
      _MyBottomNavigationBarAppState();
}

class _MyBottomNavigationBarAppState extends State<MyBottomNavigationBarApp> {
  int _selectedIndex = 0; // Initially, the first tab is selected.

  // Define the screens/pages for each tab.
  // final List<Widget> _widgetOptions = <Widget>[
  //   // Replace these with your actual screens/pages.
  //   // Text('Home Page'),
  //   // Text('Search Page'),
  //   // Text('Profile Page'),
  // ];

  // Function to handle tab selection.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return //Scaffold(
        // appBar: AppBar(
        //   title: Text('Bottom Navigation Bar Example'),
        // ),
        //body: //Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
        //),
        Container(
      height: 80,
      color: Colors.amberAccent,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/images/HomeIcon.png',
              height: 50,
              width: 50,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/images/CategoriesIcon.png',
              height: 50,
              width: 50,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/images/FavouriteIcon.png',
              height: 50,
              width: 50,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/images/More Icon and Text.png',
              height: 50,
              width: 50,
            ),
            label: 'More',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor:Colors.blue, // Change the color of the selected item.
        // onTap: _onItemTapped,
      ),
    );
    // );
  }
}
