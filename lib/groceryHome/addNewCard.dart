import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
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

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              //Background image
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                // //child: Image.asset(
                //   'asset/images/Banner.png',
                //   width: double.infinity,
                //   height: double.infinity,
                //   fit: BoxFit.cover,
                // ),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                '  Card holder name',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                child: TextField(
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                labelText: ' John Smith',
                hintText: ' Input your name',
                hoverColor: Colors.black,
                // focusColor: Colors.black,
              ),
              onChanged: (value) {
                // Handle text changes here
              },
            )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                '  Card Number',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                child: TextField(
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                labelText: ' 0987 0986 5543 09809',
                hintText: ' Input your card number',
                hoverColor: Colors.black,
                // focusColor: Colors.black,
              ),
              onChanged: (value) {
                // Handle text changes here
              },
            )),
          ),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      '  Exp Date',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      '  CVc',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: TextField(
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: ' 10/23',
                      hintText: ' Input card expiry date',
                      //hoverColor: Colors.black,
                      //focusColor: Colors.black,
                    ),
                    onChanged: (value) {
                      // Handle text changes here
                    },
                  )),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: TextField(
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: ' 3465',
                      hintText: ' Input card expiry date',
                      //hoverColor: Colors.black,
                      //focusColor: Colors.black,
                    ),
                    onChanged: (value) {
                      // Handle text changes here
                    },
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Container(
          //       child: Text(
          //         'Add Card',
          //         style: TextStyle(
          //           fontFamily: 'Manrope',
          //           fontSize: 16,
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 30,
                child: Center(
                  child: Text(
                    'Subtotal',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: Center(
                    child: Text(
                  '\$35.96',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Manrope',
                  ),
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 30,
                child: const Center(
                  child: Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
                height: 30,
                child: Center(
                    child: Text(
                  '\$2.00',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Manrope',
                  ),
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 30,
                child: const Center(
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
                height: 30,
                child: Center(
                    child: Text(
                  '\$38.98',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Manrope',
                  ),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 79, 139),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16) // Square border
                    ),
              ),
              child: const Text(
                'Make Pyment',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
