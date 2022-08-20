import 'package:flutter/material.dart';
import 'package:shop/models/meal.dart';

import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  //final Category category;

  //const CategoriesMealsScreen(this.category);
  final List<Meal> meals;
  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMeals =
        meals.where((meal) => meal.categories.contains(category.id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) => MealItem(categoryMeals[index]),
      ),
    );
  }
}