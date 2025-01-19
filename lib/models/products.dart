//import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String image;
  final String price;
  bool isFavorites;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    this.isFavorites = false,
  });
}
