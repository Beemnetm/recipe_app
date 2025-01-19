import 'package:flutter/material.dart';
import 'package:recipe_app/models/products.dart';
import 'package:recipe_app/widgets/griditemproduct.dart';

class Mainshoppingscreen extends StatelessWidget {
  static const id = '/Mainshoppingscreen';
  Mainshoppingscreen({super.key});

  final List<Product> availproducts = [
    Product(
        id: '1001',
        title: 'samsung',
        description: 'phone',
        image: 'assets/images/samsung.webp',
        price: '1000'),
    Product(
        id: '1001',
        title: 'samsung',
        description: 'phone',
        image: 'assets/images/samsung.webp',
        price: '1000'),
    Product(
        id: '1001',
        title: 'samsung',
        description: 'phone',
        image: 'assets/images/samsung.webp',
        price: '1000'),
    Product(
        id: '1001',
        title: 'samsung',
        description: 'phone',
        image: 'assets/images/samsung.webp',
        price: '1000'),
    Product(
        id: '1001',
        title: 'samsung',
        description: 'phone',
        image: 'assets/images/samsung.webp',
        price: '1000'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "App bar",
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: availproducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) {
            return GridItemProduct(
              id: availproducts[index].id,
              title: availproducts[index].title,
              image: availproducts[index].image,
            );
          },
        ),
      ),
    ));
  }
}
