import 'package:flutter/material.dart';

import '../providers/product.dart';
import '../widgets/products_grid.dart';

enum FilterOPtions {
  Favourites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  final List<Product> loadedProducts = [];
  var _showOnlyFavourites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: (FilterOPtions selctedValue) {
                setState(() {
                  if (selctedValue == FilterOPtions.Favourites) {
                    _showOnlyFavourites = true;
                  } else {
                    _showOnlyFavourites = false;
                  }
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Only Favourites'),
                      value: FilterOPtions.Favourites,
                    ),
                    PopupMenuItem(
                      child: Text('All Products'),
                      value: FilterOPtions.All,
                    ),
                  ])
        ],
      ),
      //recyclerview for grids
      body: ProductsGrid(_showOnlyFavourites),
    );
  }
}
