import 'package:flutter/material.dart';

import 'myNavigatioBar.dart';

class Categories2 extends StatefulWidget {
  const Categories2({super.key});

  @override
  State<Categories2> createState() => _Categories2State();
}

class _Categories2State extends State<Categories2> {
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
            height: 20.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Shope',
                  style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 40,
                      fontFamily: 'Manrope ' // Text font size
                      ),
                ),
                TextSpan(
                  text: '\nBy Category',
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 36,
                width: 132,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 212, 42),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    'Meats & Fishes',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 14,
                      fontFamily: 'Manrope ',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 36,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Text(
                    'Vegetables',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 14,
                      fontFamily: 'Manrope ',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 36,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontSize: 14,
                      fontFamily: 'Manrope ',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[300],
                ),
                child: Image.asset(
                  'asset/images/ImageIcon2.png',
                ),
              ),
              Container(
                  height: 170,
                  width: 200,
                  child: Center(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: '\nBig & Small Fishes',
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\nFresh from sea',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 15,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\n\nStarting from',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 13,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\n\$36/KG',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 15,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      )
                    ])),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink[100],
                ),
                child: Image.asset(
                  'asset/images/ImageIcon2.png',
                ),
              ),
              Container(
                  height: 170,
                  width: 200,
                  child: Center(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: '\nHalal Meats',
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 20,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\nOrganics & Fresh',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 15,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\n\nStarting from',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 13,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      ),
                      TextSpan(
                        text: '\n\n\$90/KG',
                        style: TextStyle(
                          color: Colors.grey, // Text color
                          fontSize: 15,
                          fontFamily: 'Manrope ',
                          fontWeight: FontWeight.bold, // Text font size
                        ),
                      )
                    ])),
                  )),
            ],
          ),
          MyBottomNavigationBarApp()
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
