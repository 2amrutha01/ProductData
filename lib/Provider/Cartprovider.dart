import 'package:flutter/material.dart';
import 'package:product_listing_app/Model/ProductModel.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  // Method to add items to the cart
  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners(); // Notifies the UI when cart is updated
  }

  // Optional: Method to remove items from the cart
  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  // Optional: Method to clear the entire cart
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
