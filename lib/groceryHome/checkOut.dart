import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  TextEditingController _textEditingController = TextEditingController();
  String _displayText = "36 green way, Sunamganj";
  TextEditingController _textEditingController2 = TextEditingController();
  String _displayText2 = "Medical road, Halal lab, Sunamganj";

  @override
  void initState() {
    super.initState();
    _textEditingController.text = _displayText;
    _textEditingController2.text = _displayText2;
  }

  // void initState2() {
  //   super.initState();
  //   _textEditingController2.text = _displayText2;
  // }

  void changeText() {
    setState(() {
      _displayText = "New Text";
      _textEditingController.text = _displayText;
    });
  }

  void changeText2() {
    setState(() {
      _displayText2 = "New Text";
      _textEditingController2.text = _displayText2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              //Background image
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.white,
              ),

              // Overlayed Text
              const Positioned(
                top: 33,
                child: Text(
                  'Shopping Cart (5)',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
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
          const SizedBox(
            width: double.infinity, // Make the container take full width
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Delivery Address ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Manrope',
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            //height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber, // You can set the border color here
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            // You can set the border width here
            child: Column(children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 213, 193, 9),
                        radius: 10.0,
                        backgroundImage: AssetImage(
                            'asset/images/Group 82.png'), // Replace with your image asset
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(border: InputBorder.none),
                      onChanged: (newValue) {
                        setState(() {
                          _displayText = newValue;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeText();
                    },
                    child: Text(
                      "Edit  ",
                      style: TextStyle(
                        fontSize: 16.0,
                        //decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            //height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(
                    255, 225, 222, 222), // You can set the border color here
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            // You can set the border width here
            child: Column(children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Color.fromARGB(255, 213, 193, 9),
                      //   radius: 10.0,
                      //   backgroundImage: AssetImage(
                      //       'asset/images/Group 82.png'), // Replace with your image asset
                      // ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      maxLines: 2,
                      controller: _textEditingController2,
                      decoration: InputDecoration(border: InputBorder.none),
                      onChanged: (newValue) {
                        setState(() {
                          _displayText2 = newValue;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeText2();
                    },
                    child: Text(
                      "Edit  ",
                      style: TextStyle(
                        fontSize: 16.0,
                        //decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),

          Center(
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 239, 234, 234),
                  style: BorderStyle
                      .solid, //dotted, // Set the border style to dotted
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.amber, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 246, 243, 243),
                        child: Icon(
                          Icons.add,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Add spacing between icon and text
                    Text(
                      'Add New Address',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //),
          // const SizedBox(
          //   width: double.infinity, // Make the container take full width
          //   child: Align(
          //       alignment: Alignment.centerRight,
          //       child: Text(
          //         'Edit ',
          //         style: TextStyle(
          //           color: Colors.blue,
          //           fontFamily: 'Manrope',
          //         ),
          //       )),
          // ),
          SizedBox(
            height: 150,
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
                'Add Card',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
