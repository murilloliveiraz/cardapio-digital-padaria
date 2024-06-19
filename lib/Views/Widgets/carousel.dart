import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Views/Widgets/cardCarousel.dart';

class Carousel extends StatelessWidget {
  final List<ProductModel> products;
  const Carousel({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              viewportFraction: 0.5,
            ),
            items: products.map((product) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: CardCarousel(product: product)
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}