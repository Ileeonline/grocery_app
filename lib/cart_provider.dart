import 'package:flutter/material.dart';
import 'package:grocery_app/cart_model.dart';

class ShopDataProvider with ChangeNotifier {
  final List<ShopItem> _items = [
    ShopItem(
        name: 'Avocado',
        price: '\$2.34',
        imagePath: 'images/avacado.png',
        color: Colors.green),
    ShopItem(
        name: 'Banana',
        price: '\$1.84',
        imagePath: 'images/banana.png',
        color: Colors.yellow),
    ShopItem(
        name: 'Water Bottle',
        price: '\$1.00',
        imagePath: 'images/bottle.png',
        color: Colors.blue),
    ShopItem(
        name: 'Chicken Wings',
        price: '\$8.28',
        imagePath: 'images/chicken.png',
        color: Colors.brown),
  ];

  List<ShopItem> get items => _items;
  @override
  void notifyListeners() {
    items.length.toString();
    super.notifyListeners();
  }
}
