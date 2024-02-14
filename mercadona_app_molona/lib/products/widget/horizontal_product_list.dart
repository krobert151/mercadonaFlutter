import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/products/model/prod_cat.dart';

class HorizontalList extends StatelessWidget {
  final List<Products>? products;

  const HorizontalList(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products!.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 100,
              /*child: Text(
                  "${products![index].id!} ${products![index].displayName}"),*/
              child: Image.network(
                products![index].thumbnail!,
                height: 200,
                width: 80,
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
