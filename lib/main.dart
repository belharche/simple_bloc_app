import 'package:bloc_app/features/cart/ui/cart.dart';
import 'package:bloc_app/features/home/ui/home.dart';
import 'package:bloc_app/features/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/cart': (context) => CartPage(),
        '/wishlist': (context) => WishlistPage(),
      },
    );
  }
}
