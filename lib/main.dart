import 'package:flutter/material.dart';
import 'package:product_listing_app/Navigation.dart';
import 'package:product_listing_app/Provider/Cartprovider.dart';
import 'package:product_listing_app/Provider/NavigationProvider.dart';
import 'package:product_listing_app/Provider/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Navigation(),
    );
  }
}
