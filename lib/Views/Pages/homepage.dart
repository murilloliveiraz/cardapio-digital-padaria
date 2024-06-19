import 'package:flutter/material.dart';
import 'package:rainhadobel/Styles/styles.dart';
import 'package:rainhadobel/Views/Widgets/appBar.dart';
import 'package:rainhadobel/Views/Widgets/imageContainer.dart';
import 'package:rainhadobel/Views/Widgets/carousel.dart';
import 'package:rainhadobel/Views/Widgets/sliderConfeitaria.dart';
import 'package:rainhadobel/Views/Widgets/sliderFriosELaticionios.dart';
import 'package:rainhadobel/Views/Widgets/sliderPaes.dart';
import 'package:rainhadobel/Views/Widgets/textSlider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF501C09),
      body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: Container(
                  height: 1300,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 213, 213, 213),
                  child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageContainer(width: double.infinity, height: 200, imageURL:"lib/Images/banner.png", isNetworkImage: false),
                            SizedBox(height: 20),
                            Text("Categorias", style: SansBold(18)),
                            TextSlider(),
                            SizedBox(height: 20),
                            Text("Nossos Produtos", style: SansBold(20)),
                            SizedBox(height: 30),
                            Text("Pães e Salgados", style: SansBold(16)),
                            SizedBox(height: 10),
                            SliderPaes(),
                            Text("Confeitaria", style: SansBold(16)),
                            SizedBox(height: 10),
                            SliderConfeitaria(),
                            Text("Frios e Laticínios", style: SansBold(16)),
                            SizedBox(height: 10),
                            SliderFriosELaticinios(),
                          ],
                        )
                      ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}