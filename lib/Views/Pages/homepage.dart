import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rainhadobel/Styles/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF501C09),
       appBar: AppBar(
        toolbarHeight: 200,
          backgroundColor: Color(0xFF501C09),
          title: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Localização", style: SansNormal(16)),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined, color: Color(0xFFFCAF3C)),
                          Text("Presidente Altino", style: SansMedium(18))
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ShoppingCart()));
                    },
                    icon: const Icon(Icons.shopping_cart, color: Color(0xFFFCAF3C)),
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Olá, Bem vindo."),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      body: Column(
         children: [
          SizedBox(height: 50),
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