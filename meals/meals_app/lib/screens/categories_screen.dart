import 'package:flutter/material.dart';
import '../category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals App'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25.0),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  catData.title,
                  catData.color,
                  catData.id,
                ))
            .toList(),
        crossAxisCount: 2,
        mainAxisSpacing: 35.0,
        crossAxisSpacing: 20.0,

        // gridDelegate:
        //     SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
      ),
    );
  }
}
