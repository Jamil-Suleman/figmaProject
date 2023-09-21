import 'package:flutter/material.dart';

class Orders1 extends StatefulWidget {
  const Orders1({super.key});

  @override
  State<Orders1> createState() => _Orders1State();
}

List<Map<String, dynamic>> cardList = [
  {
    'name': 'John Doe',
    'cardNumber': '1234 5678 9012 3456',
    'expiryDate': '12/25',
    'cvc': '123'
  },
  {
    'name': 'Jane Smith',
    'cardNumber': '5678 1234 9876 5432',
    'expiryDate': '06/24',
    'cvc': '456'
  },
  // Add more entries as needed
];

class _Orders1State extends State<Orders1> {
  final List<String> items = List.generate(3, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: Alignment.center,
            children: [
              //Background image
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
              ),
              // Overlayed Text
              const Positioned(
                top: 33,
                left: 100,
                child: Text(
                  'Add Card',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                top: 22,
                left: 22, // Adjust the position as needed
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 243, 240, 240),
                  radius: 25, // Radius of the circular avatar
                  // backgroundImage: AssetImage('assets/sample_image.jpg'), // Add your image asset
                ),
                // Add more Positioned widgets for additional images or widgets
              ),

              Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  'asset/images/Fill1.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 200,
                child: Stack(children: [
                  // Background image
                  Image.asset(
                    'asset/images/A20 1.png', // Replace with your image path
                    fit: BoxFit.cover,
                    // width: double.infinity,
                    // height: double.infinity,
                  ),

                  // Foreground image (partially overlapping)
                  const Positioned(
                    top: 90,
                    left: 70, // Adjust the position as needed
                    child: CircleAvatar(
                      backgroundImage: AssetImage('asset/images/parcal.jpg'),
                      backgroundColor: Color.fromARGB(255, 243, 240, 240),
                      radius: 25, // Radius of the circular avatar
                      // backgroundImage: AssetImage('assets/sample_image.jpg'), // Add your image asset
                    ),
                    // Add more Positioned widgets for additional images or widgets
                  ),
                ]),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Baseline(
                  //   baseline: 0,
                  //   baselineType: TextBaseline.alphabetic,
                  // ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your Oranges\n',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:
                                'Manrope', // Change the font size as needed
                            color:
                                Colors.black, // Change the text color as needed
                          ),
                        ),
                        TextSpan(
                          text: 'are on the way',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            fontSize: 20, // Change the font size as needed
                            color: Color.fromARGB(255, 5, 0,
                                0), // Change the text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 56,
                    width: 115,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 79, 139),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16) // Square border
                            ),
                      ),
                      child: const Text(
                        'Track Order',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
          const Text(
            '                Meet our rider, Rakib',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Manrope', // Change the font size as needed
              color: Color.fromARGB(
                  255, 40, 39, 39), // Change the text color as needed
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  leading: Image.asset(
                    'asset/images/lemon2.png', // Replace with your image URL
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bananas',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            color: Colors.grey),
                      ),
                      Text(
                        '\$7.90',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            color: Colors.black),
                      ),
                      Text(
                        '02/10/2021',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  subtitle: Text('Additional Information'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Button action
                    },
                    child: Text('Action'),
                  ),
                );
              },
            ),
          ),

////
////
          ///
          ///
          ///
          ///
          ///
//
        ]),
      ),
    );
  }
}
