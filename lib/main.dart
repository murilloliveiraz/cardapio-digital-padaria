import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainhadobel/Controllers/product_controller.dart';
import 'package:rainhadobel/Views/Pages/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers : [
        ChangeNotifierProvider(create: (context) => ProductController()),
      ],
      child: const MaterialApp(
        title: 'Rainha do Bel',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}