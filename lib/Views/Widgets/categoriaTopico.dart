import 'package:flutter/material.dart';
import 'package:rainhadobel/Styles/styles.dart';

Container CategoriaTopico(String texto){
  return Container(
    alignment: Alignment.center,
    width: 150,
    height: 20,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: primaryColor(),
      borderRadius: BorderRadius.circular(50)),
    child:
        Text(texto, style: SansNormalYellow(14))
  );
}