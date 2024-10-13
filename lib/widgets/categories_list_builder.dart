import 'package:flutter/material.dart';

import '../models/categories_model.dart';
import 'category_container.dart';

class CategoriesListBuilder extends StatelessWidget {
  const CategoriesListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CategoryContainer(
          name: category[index].name,
          image: category[index].image,
        );
      },
      itemCount: category.length,
    );
  }
}
