import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final String price;
  final String imagePath;
  final Color color;

  ShopItem({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.color,
  });
}