import 'package:flutter/material.dart';

class ScrenUpper extends StatelessWidget {
  const ScrenUpper({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: //Scaffold(
          //backgroundColor: Color.fromARGB(255, 5, 101, 179),
          // appBar: AppBar(
          //   title: Text('My App'),
          // ),
          //body:
          Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10,
            color: Color.fromARGB(255, 5, 101, 179),
          ),
          Container(
            color: Color.fromARGB(255, 5, 101, 179),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Hey, Halal',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Expanded(
                  child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 2.5, // Adjust the width factor as needed
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow[600],
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                ),
                Image.asset(
                  'asset/images/bag.png', // Replace with your image asset path
                  width: 63,
                  height: 80,
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 5, 101, 179),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 20, 68, 100),
                hintText: 'Search Product or Store',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  height: 72,
                  width: MediaQuery.of(context).size.width * .5,
                  alignment: Alignment.centerLeft,
                  color: Color.fromARGB(255, 5, 101, 179),
                  padding: EdgeInsets.all(16.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Delivery to',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontSize: 11),
                    ),
                    TextSpan(
                      text: '\nGreen Way 3000, Sylhet',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope',
                          fontSize: 14),
                    ),
                  ]))),
              Container(
                // height: 45,
                width: MediaQuery.of(context).size.width * .5,
                alignment: Alignment.centerRight,
                color: Color.fromARGB(255, 5, 101, 179),
                padding: EdgeInsets.all(16.0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'WITHIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontSize: 11),
                  ),
                  TextSpan(
                    text: '\n1 Hour',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontSize: 14),
                  ),
                  WidgetSpan(
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                  ),
                ])),
              ),
            ],
          ),
        ],
      ),
      //),
    );
  }
}
