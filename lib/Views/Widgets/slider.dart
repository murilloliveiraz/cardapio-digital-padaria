import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rainhadobel/Models/product_model.dart';

class Carousel extends StatelessWidget {
  final List<ProductModel> products;
  const Carousel({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400,
                viewportFraction: 0.8,
              ),
              items: products.map((product) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber
                      ),
                      child: Text(product.name, style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}