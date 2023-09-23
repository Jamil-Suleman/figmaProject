import 'package:figma_screen/groceryHome/takeOrder.dart';
import 'package:flutter/material.dart';

import 'getStartedScreen/getStrted1.dart';
import 'groceryHome/addNewCard.dart';
import 'groceryHome/categories.dart';
import 'groceryHome/categories2.dart';
import 'groceryHome/checkOut.dart';
import 'groceryHome/droDownBox.dart';
import 'groceryHome/groceryHome11.dart';
import 'groceryHome/groceryHome22.dart';
import 'groceryHome/myNavigatioBar.dart';
import 'groceryHome/orders1.dart';
import 'groceryHome/orders2.dart';
import 'groceryHome/productDetails1.dart';
import 'groceryHome/productDetails2.dart';
import 'groceryHome/productDetails3.dart';
import 'groceryHome/productDetails4.dart';
import 'groceryHome/shoppingCart1.dart';
import 'groceryHome/shoppingCartOffer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: _title,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      home: GetStarted1(),
      // home: PageView(
      //   children: [
      //     GetStarted1(),
      //     GroceryHome11(),
      //     GroceryHome22(),
      //     Categories(),
      //     Categories2(),
      //     ProductDetail1(),
      //     ProductDetail2(),
      //     ProductDetail3(),
      //     ProductDetail4(),
      //     ShoppingCartOffer(),
      //     ShppingCrt1(),
      //     CheckOut(),
      //     AddNewCard(),
      //     Orders1(),
      //     Orders2(),
      //     TakeOrder(),
      //   ],
      // ), // //
      // initialRoute: '/',
      // routes: {
      //   // Define named routes for your screens
      //   '/': (context) => GetStarted1(),
      // },
    );
  }
}
