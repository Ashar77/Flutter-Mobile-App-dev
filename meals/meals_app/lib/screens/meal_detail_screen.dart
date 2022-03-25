import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

class MealDetailScreen extends StatelessWidget {
  // const MealDetailScreen({Key? key}) : super(key: key);

  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Center(
      child: Text('meal : $mealId'),
    );
  }
}
