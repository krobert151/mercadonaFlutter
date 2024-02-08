import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/categories/model/categories_response.dart';
import 'package:mercadona_app_molona/products/widget/list_prducts_category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category.name.toString()),
        ),
        body: ListView.builder(
          itemCount: category.categories?.length,
          itemBuilder: (context, index) {
            return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListsProdCat(
                            id: category.categories![index].id.toString()),
                      ));
                },
                child: Text(category.categories![index].name!));
          },
        ));
  }
}
