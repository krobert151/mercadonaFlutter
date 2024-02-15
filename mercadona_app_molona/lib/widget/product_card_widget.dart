import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://prod-mercadona.imgix.net/images/1a84cd7052b68873985104ac24b87043.jpg?fit=crop&h=300&w=300'),
              ),
              ListTile(
                title: Text('Nombre de producto'),
                subtitle: Text('packaging, min_bunch_amount+reference_format'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '9,90€',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(' /ud',
                      style: TextStyle(color: Colors.grey, fontSize: 20))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
