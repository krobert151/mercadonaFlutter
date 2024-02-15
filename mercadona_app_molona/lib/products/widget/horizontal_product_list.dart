import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/products/model/prod_cat.dart';

class HorizontalList extends StatelessWidget {
  final List<Products>? products;

  const HorizontalList(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products!.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 200,
              child: Stack(children: [
                Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image.network(
                            products![index].thumbnail!,
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            textAlign: TextAlign.center,
                            products![index].displayName!,
                            style: const TextStyle(
                                fontSize: 15, overflow: TextOverflow.clip),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Text(
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      "${products![index].priceInstructions!.bulkPrice!}€"),
                )
              ]),
            );
          }),
    );
  }
}
