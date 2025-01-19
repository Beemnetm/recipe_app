import 'package:flutter/material.dart';
import 'package:recipe_app/screens/productdetailscreen.dart';

class GridItemProduct extends StatelessWidget {
  const GridItemProduct({
    super.key, // Corrected the super.key syntax
    required this.id,
    required this.title,
    required this.image,
  });

  final String id;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.id, arguments: id);
        },
        child: GridTile(
          child: Image.asset(image),
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
            backgroundColor: Colors.black54,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ),
        ),
      ),
    );
  }
}
