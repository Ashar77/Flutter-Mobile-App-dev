import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category-meals';

  // // final String categoryId;
  // // final String categoryTitle;

  // CategoryMeals(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String?, String?>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories!.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(categoryMeals[index].title!);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
