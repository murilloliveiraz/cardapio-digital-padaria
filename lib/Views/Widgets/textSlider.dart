import 'package:flutter/material.dart';
import 'package:rainhadobel/Views/Widgets/categoriaTopico.dart';

class TextSlider extends StatelessWidget {
  const TextSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CategoriaTopico('Pães e Salgados'),
          CategoriaTopico('Confeitaria'),
          CategoriaTopico('Frios e Laticínios'),
        ],
      ),
    );
  }
}