import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  //const ProductDetailScreen({Key? key}) : super(key: key);

  // final String? title;
  // final String? price;

  // ProductDetailScreen({this.title,  this.price});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final loadedProduct = Provider.of<Products>(context, listen: false).findById(
        productId); // listen=false --> to take the data only once and not continously listening to the changes and not rebuilding the widget tree again and again.

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title!),
      ),
    );
  }
}
