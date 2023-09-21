import 'package:flutter/material.dart';

class GroceryHome2 extends StatefulWidget {
  const GroceryHome2({super.key});

  @override
  State<GroceryHome2> createState() => _GroceryHome2State();
}

class _GroceryHome2State extends State<GroceryHome2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 150,
                color: Colors.blue,
                child: Center(
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
              ),
              Stack(children: [
                Container(
                  height: 40,
                  width: 242,
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
            ],
          ),
          Container(
            height: 30.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 57, 90, 118),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'search product or store',
                    style: TextStyle(
                        color: Colors.grey, // Text color
                        fontSize: 16,
                        fontFamily: 'Manrope ' // Text font size
                        ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: 25,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text(
              'DELIVERY                                                                WITHIN',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
          ),
          Container(
            height: 25,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text(
              'Green Way 3000, Sylhet                   1HOUR',
              style: TextStyle(
                  fontFamily: 'Manrope', fontSize: 17, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 123,
                width: 158,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 212, 42),
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
                    color: Color.fromARGB(255, 191, 190, 190),
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
            height: 30,
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
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'asset/images/Card4.png',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'asset/images/Card5.png',
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     height: 200,
              //     width: 100,
              //     child: Image.asset(
              //       'asset/images/Card3.png',
              //       // fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 5,
              //   width: MediaQuery.of(context).size.width,
              // ),
            ],
          ),
          Row(children: [
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'asset/images/HomeIcon.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'asset/images/Categories Icon and Text.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'asset/images/Favourite Icon and Text.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'asset/images/More Icon and Text.png',
                ),
              ),
            ),
          ])
        ],
      )),
    );
  }
}
