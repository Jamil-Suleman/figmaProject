import 'package:flutter/material.dart';
import 'data.dart';
import 'groceryHome22.dart';
import 'myNavigatioBar.dart';
import 'scren Upper section.dart';

class GroceryHome11 extends StatefulWidget {
  const GroceryHome11({Key? key}) : super(key: key);

  @override
  State<GroceryHome11> createState() => _GroceryHome1State();
}

class _GroceryHome1State extends State<GroceryHome11> {
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
            Stack(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GroceryHome22()));
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 123,
                  width: 269,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Get\n50% OFF\non first 03 order',
                    style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20,
                        fontFamily: 'Manrope ' // Text font size
                        ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Image.asset('asset/images/50off.png'),
              )
            ]),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                '   Recomended                     ',
                style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 30,
                    fontFamily: 'Manrope ' // Text font size
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
                            height: 80,
                            width: 100,
                            child: Image.asset(
                              image,
                              fit: BoxFit.contain,
                            )),
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
