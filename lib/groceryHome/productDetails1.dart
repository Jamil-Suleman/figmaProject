import 'package:flutter/material.dart';

import 'categories2.dart';
import 'data.dart';
import 'productDetails2.dart';

class ProductDetail1 extends StatefulWidget {
  const ProductDetail1({super.key});

  @override
  State<ProductDetail1> createState() => _ProductDetail1State();
}

class _ProductDetail1State extends State<ProductDetail1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        Row(children: [
          Stack(children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Center(
                child: Text(
                  'Big & Small Fishes',
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
            Positioned(
              top: 10,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories2()));
                },
                child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(255, 233, 229, 229),
                    child: Image.asset('asset/images/Fill1.png')),
              ),
            ),
            // Positioned(
            //   top: 20,
            //   left: 20,
            //   child: CircleAvatar(
            //     backgroundColor: const Color.fromARGB(255, 220, 216, 216),

            //   )
            // ),

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
          ]),
        ]),
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
              child: Center(
                child: Text(
                  'Popular',
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
                  'Low Price',
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
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  'Small Fishes',
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
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
            ),
            itemCount: groceries1.length,
            itemBuilder: (BuildContext context, int index) {
              final cardItem = groceries1[index];
              final image = cardItem['image'];
              final title = cardItem['name'];
              final text = cardItem['subName'];
              final text2 = cardItem['Subname3'];

              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail2()));
                      break;
                    case 1:
                      break;
                    // Add more cases for each card/screen as needed
                    default:
                      break;
                  }
                },
                child: Card(
                  child: Column(
                    children: [
                      Container(
                          height: 80,
                          width: 100,
                          child: Image.asset(
                            image,
                            fit: BoxFit.contain,
                          )),
                      ListTile(
                        tileColor: Color(0XF8F9FB),
                        title: Text(title),
                        subtitle: Text(text + text2),
                        isThreeLine: true,
                        trailing: const CircleAvatar(
                            backgroundColor: Color(0xff0565b5),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    ));
  }
}
