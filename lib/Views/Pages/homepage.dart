import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainhadobel/Controllers/product_controller.dart';
import 'package:rainhadobel/Controllers/user_controller.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Views/Widgets/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
          Expanded(
            child: Consumer2<ProductController, UserController>(
              builder: (context, productController, userController, child){
                productController.populateBakeryItems();
                List<ProductModel> products = productController.products;
                return Carousel(products: products);
              }
            ),
          ),
        ],
      ),
    );
  }
}