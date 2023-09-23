import 'package:flutter/material.dart';

import '../groceryHome/groceryHome11.dart';

class GetStarted1 extends StatefulWidget {
  const GetStarted1({Key? key}) : super(key: key);

  @override
  State<GetStarted1> createState() => _GetStarted1State();
}

class _GetStarted1State extends State<GetStarted1> {
  //PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: PageView(
            //controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              Column(children: [
                Stack(children: [
                  Center(
                    child: Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                      child: const Column(children: [
                        Text(
                          'Your holiday\nshopping\ndeliverd to Screen\none',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 150,
                    child: Image.asset('asset/images/Emoji.png'),
                  ),
                ]),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "There's something for everyones\nto enjoy with Sweet Shop\nFavourites Screen 1",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  children: [
                    const SizedBox(width: 40.0),
                    Container(
                      width: 70,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius for rounded corners
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Container(
                      width: 40,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius for rounded corners
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Center(child: Image.asset('asset/images/Icon.png'))),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.blue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroceryHome11()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Background color of the button
                      onPrimary: Colors.white, // Text color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Radius for rounded corners
                        side: const BorderSide(
                            color: Colors.black,
                            width: 1.0), // Border color and width
                      ),
                    ),
                    child: const Text(
                      'Get Started     ---->',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ]),
              Column(children: [
                Stack(children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: const Column(children: [
                      Center(
                        child: Text(
                          'Your holiday\nshopping\ndeliverd to Screen\none',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                    top: 120,
                    left: 150,
                    child: Image.asset('asset/images/Emoji.png'),
                  ),
                ]),
                const SizedBox(
                  height: 80,
                  child: Center(
                    child: Text(
                      "There's something for everyones\nto enjoy with Sweet Shop\nFavourites Screen 1",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  //mainAxisAlignment:
                  // MainAxisAlignment.start, // Horizontal alignment
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 40.0),
                    Container(
                      width: 40,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius for rounded corners
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Container(
                      width: 70,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius for rounded corners
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Center(child: Image.asset('asset/images/Icon.png'))),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                    height: 50,
                    width: 200,
                    color: Colors.blue,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroceryHome11()));
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.white, // Background color of the button
                        // ignore: deprecated_member_use
                        onPrimary: Colors.white, // Text color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Radius for rounded corners
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1.0), // Border color and width
                        ),
                      ),
                      child: const Text(
                        'Get Started     ---->',
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              ]),
            ]),
      ),
    );
  }
}
