import 'package:flutter/material.dart';

import '../models/products.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
      ),
      //recyclerview for grids
      body: ProductsGrid(),
    );
  }
}
