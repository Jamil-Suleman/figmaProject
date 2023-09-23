import 'package:flutter/material.dart';

class TakeOrder extends StatefulWidget {
  const TakeOrder({super.key});

  @override
  State<TakeOrder> createState() => _TakeOrderState();
}

class _TakeOrderState extends State<TakeOrder> {
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
                  'Track Order',
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
          Stack(children: [
            Container(
                height: 350,
                width: double.infinity,
                child: Image.asset(
                  'asset/images/Mask Group.png',
                  fit: BoxFit.fill,
                )),
            // Positioned(
            //   top: 100,
            //   child: Container(
            //     height: 100,
            //     child: ListTile(
            //       leading: Image.asset('asset/images/lemon.png'),
            //       title: Text(
            //         'Big Fishes',
            //         style: const TextStyle(
            //           fontFamily: 'Manrope',
            //           fontSize: 14,
            //         ),
            //       ),
            //       subtitle: Text(
            //         '\$7.90',
            //         style: const TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Manrope',
            //         ),
            //       ),
            //       trailing: Text(
            //         'ID: #765433',
            //         style: const TextStyle(
            //           fontSize: 14,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Manrope',
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ]),

          // const Text(
          //   '                Meet our rider, Rakib',
          //   style: TextStyle(
          //     fontSize: 12,
          //     fontFamily: 'Manrope', // Change the font size as needed
          //     color: Color.fromARGB(
          //         255, 40, 39, 39), // Change the text color as needed
          //   ),
          // ),

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
