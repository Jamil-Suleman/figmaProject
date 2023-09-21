import 'package:flutter/material.dart';

class ProductDetail4 extends StatefulWidget {
  const ProductDetail4({super.key});

  @override
  State<ProductDetail4> createState() => _ProductDetail4State();
}

class _ProductDetail4State extends State<ProductDetail4> {
  bool isTextBoxVisible = false;
  bool isTextBoxVisible1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 20,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        Row(children: [
          Stack(children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Center(
                child: Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Image.asset('asset/images/bag1.png'),
            ),
            // FractionallySizedBox(
            //     alignment: Alignment.centerLeft,
            //     widthFactor: 0, // Adjust the width factor as needed
            //     child: Container(
            //       width: 25,
            //       height: 25,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.yellow[600],
            //         border: Border.all(
            //           color: Colors.white,
            //           width: 2,
            //         ),
            //       ),
            // child: const Center(
            //   child: Text(
            //     '1',
            //     style: TextStyle(
            //       fontSize: 16,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // )),
            // Image.asset(
            //   'asset/images/bag.png', // Replace with your image asset path
            //   width: 63,
            //   height: 80,
            // )
          ]),
        ]),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: 200, // Set the width and height of the circular box
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle, // Make it circular
              color: Color.fromARGB(
                  255, 243, 239, 239), // Set the background color
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 170,
                  left: 20,
                  child: Align(
                    alignment:
                        Alignment.bottomCenter, // Align the row at the bottom
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 40.0),
                        Container(
                          width: 20,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the radius for rounded corners
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: 20,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the radius for rounded corners
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          width: 20,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the radius for rounded corners
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center, // Center the image
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 243, 239, 239),
                      radius: 50, // Set the radius of the circle avatar
                      backgroundImage: AssetImage(
                          'asset/images/lemon2.png'), // Add your image asset
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ' Thin Choise Top',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ' Orange',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const SizedBox(
            height: 30,
            width: 100,
            child: Center(
              child: Text(
                '\$34.70/KG', //'Thin Choise Top\nOrange',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //SizedBox(width: 10.0),
          Container(
            alignment: Alignment.centerRight,
            height: 30,
            width: 132,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: const Center(
              child: Text(
                '\$22.04 OFF',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 247, 247), // Text color
                  fontSize: 12,
                  fontFamily: 'Manrope ',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 130,
            child: Center(
              child: Text(
                'Reg: \$56.70 USD', //'Thin Choise Top\nOrange',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ]),

        //   ],
        // ),
        //SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 245, 221, 8),
              size: 20, // Adjust the size of the star icon as needed
            ),
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 245, 221, 8),
              size: 20, // Adjust the size of the star icon as needed
            ),
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 245, 221, 8),
              size: 20, // Adjust the size of the star icon as needed
            ),
            const Icon(
              Icons.star_half_sharp,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Container(
              height: 50,
              width: 130,
              child: const Center(
                child: Text(
                  '110 Reviews', //'Thin Choise Top\nOrange',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Align the buttons with equal spacing
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle the first button click
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the border radius as needed
                  side: BorderSide(color: Colors.blue), // Border color
                ),
              ),
              child: const Text(
                'Add To Cart',
                style: TextStyle(
                    fontFamily: 'Manrope', fontSize: 16, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the first button click
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: const Color.fromARGB(
                    255, 5, 67, 118), // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the border radius as needed
                  side: const BorderSide(color: Colors.blue), // Border color
                ),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                    fontFamily: 'Manrope', fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Row(
        //   children: [
        //     SizedBox(width: 30),
        //     Center(
        //         child: Container(
        //             height: 100,
        //             width: 100,
        //             child: Image.asset(
        //               'asset/images/lemon.png',
        //               fit: BoxFit.contain,
        //             ))),
        //     const SizedBox(width: 180),
        //     Column(
        //       children: [
        //         Image.asset(
        //           'asset/images/Heart.png', // Replace with your image asset path
        //           width: 50, // Set the width of the image
        //           height: 50, // Set the height of the image
        //         ),
        //         Image.asset(
        //           'asset/images/More Square.png', // Replace with your image asset path
        //           width: 50, // Set the width of the image
        //           height: 50, // Set the height of the image
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        const Text(
          'Details', //'Thin Choise Top\nOrange',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        const Text(
          'Praesent commodo cursus magna, vel\nscelerisque nisl consectetur et. Nullam quis\nrisus eget urna mollis ornare vel eu leo.', //'Thin Choise Top\nOrange',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isTextBoxVisible = !isTextBoxVisible;
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Row(
              children: [
                Text(
                  'Nutritional facts',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 200),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isTextBoxVisible,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Text(
              'Blank Text Box',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            setState(() {
              isTextBoxVisible1 = !isTextBoxVisible1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Row(
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 250),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isTextBoxVisible1,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Text(
              'Blank Text Box',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
