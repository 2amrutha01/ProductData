import 'package:flutter/material.dart';
import 'package:product_listing_app/Home.dart';
import 'package:product_listing_app/Provider/NavigationProvider.dart';
import 'package:product_listing_app/cart.dart';
import 'package:provider/provider.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    // Define your screens for Home and Cart
    final List<Widget> screens = [
      HomeScreen(), // Replace with your HomeScreen widget
      CartList(), // Replace with your Cart widget
    ];

    return Scaffold(
      body: screens[navigationProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationProvider.currentIndex,
        onTap: (index) => navigationProvider.updateIndex(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
