import 'package:flutter/material.dart';

class Item {
  final String name;
  final String price;
  int quantity;
  Item(this.name, this.price, this.quantity);
}

class ShppingCrt1 extends StatefulWidget {
  const ShppingCrt1({super.key});

  @override
  State<ShppingCrt1> createState() => _ShppingCrt1State();
}

class _ShppingCrt1State extends State<ShppingCrt1> {
  final List<Item> items = [
    Item('Bananas', '\$7.90', 0),
    Item('Package 01', '\$7.90', 0),
    Item('Package 02', '\$7.90', 0),
    Item('Package 03', '\$7.90', 0),
    Item('Package 04', '\$7.90', 0),
  ];
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
                child: Text(
                  'Shopping Cart (5)',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 22,
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
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: Image.asset(
                      'asset/images/bannana.jpg'), // Replace with your image path
                  title: Text(
                    item.name,
                    style: const TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    item.price,
                    style: const TextStyle(
                      fontFamily: 'Manrope',
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add_circle,
                            color: Colors.grey, opticalSize: 30),
                        onPressed: () {
                          // Increase quantity
                          item.quantity++;
                        },
                      ),
                      Text(
                        item.quantity.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Manrope',
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.remove_circle,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Decrease quantity (if greater than 0)
                          if (item.quantity > 0) {
                            item.quantity--;
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            width: double.infinity, // Make the container take full width
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Edit ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Manrope',
                  ),
                )),
          ),
          SizedBox(
            height: 70,
          ),
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
                'Proceed to chekout',
                style: TextStyle(
                  fontSize: 20,
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
