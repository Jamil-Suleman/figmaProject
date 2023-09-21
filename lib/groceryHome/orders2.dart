import 'package:flutter/material.dart';

class Orders2 extends StatefulWidget {
  const Orders2({super.key});

  @override
  State<Orders2> createState() => _Orders2State();
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

class _Orders2State extends State<Orders2> {
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
                  'Orders',
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Current',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 14,
                      fontFamily: 'Manrope ',
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Past',
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
          ListTile(
            leading: Image.asset('asset/images/lemon.png'),
            title: Text(
              'Fresh Orange',
              style: const TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              '\$7.90',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
            trailing: Text(
              'ID: #765433',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
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
                    // width: double.infinity,//asset\images\lemon2.png
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
          ListTile(
            leading: Image.asset('asset/images/lemon.png'),
            title: Text(
              'Big Fishes',
              style: const TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              '\$7.90',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
            trailing: Text(
              'ID: #765433',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
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
                    // width: double.infinity,//asset\images\lemon2.png
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
