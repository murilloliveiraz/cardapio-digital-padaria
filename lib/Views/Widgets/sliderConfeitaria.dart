import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainhadobel/Controllers/product_controller.dart';
import 'package:rainhadobel/Controllers/user_controller.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Views/Widgets/carousel.dart';

class SliderConfeitaria extends StatelessWidget {
  const SliderConfeitaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer2<ProductController, UserController>(
        builder: (context, productController, userController, child){
          List<ProductModel> products = productController.confeitaria;
          return Carousel(products: products);
        }
      ),
    );
  }
}