import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  //const ProductDetailScreen({Key? key}) : super(key: key);

  // final String? title;
  // final String? price;

  // ProductDetailScreen({this.title, this.price});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final myid = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(myid),
      ),
    );
  }
}
