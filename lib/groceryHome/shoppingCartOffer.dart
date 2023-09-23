import 'package:flutter/material.dart';

import 'productDetails4.dart';

class Item {
  final String name;
  final String price;
  int quantity;
  Item(this.name, this.price, this.quantity);
}

class ShoppingCartOffer extends StatefulWidget {
  const ShoppingCartOffer({super.key});

  @override
  State<ShoppingCartOffer> createState() => _ShoppingCartOfferState();
}

class _ShoppingCartOfferState extends State<ShoppingCartOffer> {
  final List<Item> items = [
    Item('Bananas', '\$7.90', 0),
    Item('Package 01', '\$7.90', 0),
    Item('Package 02', '\$7.90', 0),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Background image
              Container(
                height: 272,
                width: double.infinity,
                color: Color(0xfff2e569),
                child: Image.asset(
                  'asset/images/Banner.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
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

              // Overlayed Icon
              // Positioned(
              //   bottom: 50,
              //   child: Icon(
              //     Icons.star,
              //     size: 48,
              //     color: Colors.yellow,
              //   ),
              // ),

              // Other images or widgets
              Positioned(
                top: 32,
                left: 27,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail4()));
                  },
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 233, 229, 229),
                      child: Image.asset('asset/images/Fill1.png')),
                ),
              ),
              // Add more Positioned widgets for additional images or widgets
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' + 3 More',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontFamily: 'Manrope',
                ),
              ),
              Text(
                'Edit ',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Manrope',
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 50,
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
                height: 50,
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
                height: 50,
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
                height: 50,
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
                height: 50,
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
                height: 50,
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
                backgroundColor: Color(0xff1260a1),
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
          )
        ]),
      ),
    );
  }
}
