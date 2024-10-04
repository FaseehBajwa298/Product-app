import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'COD Black OPS 6 Console Game',
      description: 'Get your most viral console game Black OPS 6 at the lowest price',
      price: 29.99,
      imagePath: 'assets/images/product1.jpeg',
    ),
    Product(
      title: 'Art by Wlop',
      description: 'Learn everything about Wlop, a designer and AI artist.',
      price: 49.99,
      imagePath: 'assets/images/product2.jpeg',
    ),
    Product(
      title: 'Art by Purple Eyes',
      description: 'Here is the premium wallpaper by Purple Eyes, with peak resolution',
      price: 19.99,
      imagePath: 'assets/images/product3.jpeg',
    ),
    Product(
      title: 'Game Wallpaper',
      description: 'Here is the wallpaper of a game called The Forest',
      price: 59.99,
      imagePath: 'assets/images/product4.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
