import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  ProductTile({
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(product.imagePath, width: 50, height: 50),
      title: Text(product.title),
      subtitle: Text(product.description),
      trailing: Text('\$${product.price.toStringAsFixed(2)}'),
      onTap: onTap,
    );
  }
}
