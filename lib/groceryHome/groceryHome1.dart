import 'package:flutter/material.dart';

class GroceryHome1 extends StatefulWidget {
  const GroceryHome1({super.key});

  @override
  State<GroceryHome1> createState() => _GroceryHome1State();
}

class _GroceryHome1State extends State<GroceryHome1> {
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
                child: const Center(
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
                child: const Center(
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
            height: 15,
            width: MediaQuery.of(context).size.width,
          ),
          Stack(children: [
            Container(
              alignment: Alignment.centerRight,
              height: 123,
              width: 269,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 130, 117, 4),
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
            Positioned(
              top: 20,
              left: 20,
              child: Image.asset('asset/images/Image Icon.png'),
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
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'asset/images/Card.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'asset/images/Card2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 100,
                  child: Image.asset(
                    'asset/images/Card3.png',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 5,
              //   width: MediaQuery.of(context).size.width,
              //),
            ],
          ),
          Row(children: [
            Expanded(
              child: Container(
                height: 117,
                width: 100,
                child: Image.asset(
                  'asset/images/HomeIcon.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 117,
                width: 100,
                child: Image.asset(
                  'asset/images/Categories Icon and Text.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 117,
                width: 100,
                child: Image.asset(
                  'asset/images/Favourite Icon and Text.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 117,
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
