import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  List<dynamic> _products = [];

  List<dynamic> get products => _products;

  Future<void> fetchProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        _products = json.decode(response.body);
        notifyListeners();
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Failed to fetch products: $error");
    }
  }
}
