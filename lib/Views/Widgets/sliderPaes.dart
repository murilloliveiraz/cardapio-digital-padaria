import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainhadobel/Controllers/product_controller.dart';
import 'package:rainhadobel/Controllers/user_controller.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Views/Widgets/carousel.dart';

class SliderPaes extends StatelessWidget {
  const SliderPaes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer2<ProductController, UserController>(
        builder: (context, productController, userController, child){
          List<ProductModel> products = productController.paesESalgados;
          return Carousel(products: products);
        }
      ),
    );
  }
}