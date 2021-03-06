import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widgets/meal_item.dart';

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
            return MealItem(
              id: categoryMeals[index].id!,
              title: categoryMeals[index].title!,
              imageUrl: categoryMeals[index].imageUrl!,
              duration: categoryMeals[index].duration!,
              affordability: categoryMeals[index].affordability!,
              complexity: categoryMeals[index].complexity!,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
