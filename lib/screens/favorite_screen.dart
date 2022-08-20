import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/components/meal_item.dart';
import 'package:shop/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favotireMeals;

  const FavoriteScreen(this.favotireMeals);

  @override
  Widget build(BuildContext context) {
    if (favotireMeals.isEmpty) {
      return Center(
        child: Text('Nenhum Favorito'),
      );
    } else {
      return ListView.builder(
        itemCount: favotireMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favotireMeals[index]);
        },
      );
    }
  }
}
