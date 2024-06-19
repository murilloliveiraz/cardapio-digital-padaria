import 'package:flutter/material.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Styles/styles.dart';

class CardCarousel extends StatelessWidget {
  final ProductModel product;
  const CardCarousel({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Card(
        color: primaryColor(),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.network(
                product.pictureURL,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
              ),
            ),
            ListTile(
              title: Text(product.name, style: SansMedium(16)),
              subtitle: Row(
                children: [ // Espaço entre preço e rating
                  Text("R\$ ${product.price.toStringAsFixed(2)}", style: SansMediumYellow(14),),
                  SizedBox(width: 8), // Espaço entre preço e rating
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  SizedBox(width: 4), // Espaço entre ícone e rating
                  Text(product.rating.toString(), style: SansMedium(14),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}