import 'package:flutter/material.dart';
import 'package:rainhadobel/Views/Widgets/appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF501C09),
      appBar: CustomAppBar(),
      body: Column(
         children: [
          Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  child: Container(
                    color: const Color.fromARGB(255, 213, 213, 213),
                  ),
                ),
            ),
        ],
      ),
    );
  }
}

          // Expanded(
          //   child: Consumer2<ProductController, UserController>(
          //     builder: (context, productController, userController, child){
          //       productController.populateBakeryItems();
          //       List<ProductModel> products = productController.products;
          //       return Carousel(products: products);
          //     }
          //   ),
          // ),