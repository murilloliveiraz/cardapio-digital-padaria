import 'package:flutter/material.dart';
import 'package:rainhadobel/Models/product_model.dart';

class ProductController with ChangeNotifier {
  final List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  void populateBakeryItems() {
    _products.addAll([
      ProductModel(
        name: 'Pão Francês',
        price: 0.50,
        description: 'Pão crocante e fresquinho, ideal para o café da manhã.',
        pictureURL: 'https://example.com/pao_frances.jpg',
        rating: 4.8,
        category: 'Pães',
      ),
      ProductModel(
        name: 'Bolo de Cenoura',
        price: 15.00,
        description: 'Bolo de cenoura fofinho com cobertura de chocolate.',
        pictureURL: 'https://example.com/bolo_cenoura.jpg',
        rating: 4.7,
        category: 'Bolos',
      ),
      ProductModel(
        name: 'Croissant',
        price: 3.00,
        description: 'Croissant amanteigado e folhado, perfeito para o lanche.',
        pictureURL: 'https://example.com/croissant.jpg',
        rating: 4.9,
        category: 'Pães',
      ),
      ProductModel(
        name: 'Torta de Maçã',
        price: 20.00,
        description: 'Deliciosa torta de maçã com massa crocante e recheio suculento.',
        pictureURL: 'https://example.com/torta_maca.jpg',
        rating: 4.6,
        category: 'Doces',
      ),
      ProductModel(
        name: 'Sonho',
        price: 2.50,
        description: 'Sonho recheado com creme de baunilha e polvilhado com açúcar.',
        pictureURL: 'https://example.com/sonho.jpg',
        rating: 4.5,
        category: 'Doces',
      ),
      ProductModel(
        name: 'Pão de Queijo',
        price: 1.00,
        description: 'Pão de queijo quentinho e saboroso, feito com queijo minas.',
        pictureURL: 'https://example.com/pao_queijo.jpg',
        rating: 4.9,
        category: 'Pães',
      ),
      ProductModel(
        name: 'Bolo de Chocolate',
        price: 18.00,
        description: 'Bolo de chocolate molhadinho com cobertura de brigadeiro.',
        pictureURL: 'https://example.com/bolo_chocolate.jpg',
        rating: 4.8,
        category: 'Bolos',
      ),
    ]);

    notifyListeners();
  }
}