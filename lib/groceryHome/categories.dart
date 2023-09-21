import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

import 'data.dart';
import 'myNavigatioBar.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Row(
            children: [
              Stack(children: [
                Container(
                  height: 40,
                  width: 250,
                  color: Colors.blue,
                  child: Text(
                    'Hey, Halal',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ]),
              Stack(children: [
                Container(
                  height: 40,
                  width: 142,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Image.asset('asset/images/bag.png'),
                ),
                Positioned(
                  top: 0,
                  right: 10,
                  child: Image.asset('asset/images/Group 17.png'),
                ),
              ]),
              // Positioned(
              //   top: 10,
              //   left: 0,
              //   child: Icon(Icons.search, color: Colors.white),
              // ),
            ],
          ),
          Container(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '  Shope',
                  style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 40,
                      fontFamily: 'Manrope' // Text font size
                      ),
                ),
                TextSpan(
                  text: '\n  By Category',
                  style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 50,
                      fontFamily: 'Manrope ',
                      fontWeight: FontWeight.bold // Text font size
                      ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
              ),
              itemCount: groceries1.length,
              itemBuilder: (BuildContext context, int index) {
                final cardItem = groceries1[index];
                final image = cardItem['image'];
                final title = cardItem['name'];
                final text = cardItem['subName'];
                final text2 = cardItem['Subname3'];

                return Card(
                  child: Column(
                    children: [
                      Container(
                        height: 80, width: 100,
                        //child: Image.asset(image)
                      ),
                      ListTile(
                        tileColor: Color(0XF8F9FB),
                        title: Text(title),
                        subtitle: Text(text + text2),
                        isThreeLine: true,
                        trailing: const CircleAvatar(
                            backgroundColor: Color(0xff0565b5),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          MyBottomNavigationBarApp(),
          // Row(children: [
          //   Expanded(
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset(
          //         'asset/images/HomeIcon.png',
          //       ),
          //     ),
          //   ),
          //   Expanded(
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset(
          //         'asset/images/Categories Icon and Text.png',
          //       ),
          //     ),
          //   ),
          //   Expanded(
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset(
          //         'asset/images/Favourite Icon and Text.png',
          //       ),
          //     ),
          //   ),
          //   Expanded(
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset(
          //         'asset/images/More Icon and Text.png',
          //       ),
          //     ),
          //   ),
          // ])
        ],
      )),
    );
  }
}
