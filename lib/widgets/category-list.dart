import 'package:flutter/material.dart';
import 'package:sport_app/models/category.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/General/gradient.dart';

List<Category> getCategories() {
  return ([
    Category(
        name: "Soccer",
        imagePath: "assets/categories/soccer.png",
        starred: true),
    Category(name: "Basketball", imagePath: "assets/categories/basketball.png"),
    Category(name: "Football", imagePath: "assets/categories/football.png"),
    Category(name: "Baseball", imagePath: "assets/categories/baseball.png"),
    Category(name: "Tennis", imagePath: "assets/categories/tennis.png"),
    Category(name: "Volleyball", imagePath: "assets/categories/basketball.png"),
  ]);
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = getCategories();
    return (Container(
      height: 120.0,
      margin: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 2),
          bottom: getResponsiveHeight(context: context, height: 2)),
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, pos) {
            return (CategoryCard(
              category: categories[pos],
            ));
          }),
    ));
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return (Container(
        width: 120,
        margin: EdgeInsets.only(right: 13.0),
        decoration: BoxDecoration(
          gradient: category.starred ? customGradient() : null,
          borderRadius: BorderRadius.circular(10),
          color: theme.cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              category.imagePath,
              width: 40,
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                category.name,
                style: theme.textTheme.subtitle2,
              ),
            )
          ],
        )));
  }
}
