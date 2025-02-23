import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const id = '/ProductDetailScreen';
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Detailscreen",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
