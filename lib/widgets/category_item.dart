import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(
    this.id,
    this.title,
    this.color,
  );

  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routName,
      arguments: {
        'id': id,
        'title': title,
      },
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(id, title);
      //   },
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
