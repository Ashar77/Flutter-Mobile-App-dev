import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals.dart';
import './screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String? title;
  final Color? color;
  final String? id;

  CategoryItem(this.title, this.color, this.id);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMeals(id!, title!);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ), // added null check
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color!.withOpacity(0.7), color!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
