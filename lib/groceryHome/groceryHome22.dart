import 'package:flutter/material.dart';
//import 'package:figma\lib\groceryHome\data.dart';

import 'data.dart';
import 'myNavigatioBar.dart';
import 'scren Upper section.dart';

class GroceryHome22 extends StatefulWidget {
  const GroceryHome22({Key? key}) : super(key: key);

  @override
  State<GroceryHome22> createState() => _GroceryHome1State();
}

class _GroceryHome1State extends State<GroceryHome22> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScrenUpper(),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 123,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 199, 55),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      '       346USD\nyou total savings',
                      style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold // Text font size
                          ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 123,
                  width: 158,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 221, 221),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      '       215 HRS\nyour time saved',
                      style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold // Text font size
                          ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '   Deals on Fruit and Tea',
                style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 20,
                    fontFamily: 'Manrope ',
                    fontWeight: FontWeight.bold // Text font size
                    ),
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
          ],
        ),
      )),
    );
  }
}
