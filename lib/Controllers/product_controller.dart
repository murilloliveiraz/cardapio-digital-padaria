import 'package:flutter/material.dart';
import 'package:rainhadobel/Models/product_model.dart';

class ProductController with ChangeNotifier {
  final List<ProductModel> _confeitaria = [
  ProductModel(
    name: 'Bolo de Cenoura',
    price: 15.00,
    description: 'Bolo de cenoura fofinho com cobertura de chocolate.',
    pictureURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGVbBGEmQzXDhP7EL8j3Buxbi9pa8mU2WqQA&s',
    rating: 4.7,
    category: 'Bolos',
  ),
  ProductModel(
    name: 'Torta de Maçã',
    price: 20.00,
    description: 'Deliciosa torta de maçã com massa crocante e recheio suculento.',
    pictureURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGvV_1zfnQCiMnjXk7by4zrlZKJQw1yvBIg&s',
    rating: 4.6,
    category: 'Doces',
  ),
  ProductModel(
    name: 'Sonho',
    price: 2.50,
    description: 'Sonho recheado com creme de baunilha e polvilhado com açúcar.',
    pictureURL: 'https://cdn.urbano.com.br/uploads/sonho-sem-glu-ten-800.jpg',
    rating: 4.5,
    category: 'Doces',
  ),
  ProductModel(
    name: 'Bolo de Chocolate',
    price: 18.00,
    description: 'Bolo de chocolate molhadinho com cobertura de brigadeiro.',
    pictureURL: 'https://recipesblob.oetker.com.br/assets/9f19a4f7a3cc498282ce71d31f5c4369/750x910/bolo-de-chocolate-com-cobertura-de-brigadeiro.webp',
    rating: 4.8,
    category: 'Bolos',
  ),
];

final List<ProductModel> _paesESalgados = [
  ProductModel(
    name: 'Pão Francês',
    price: 0.50,
    description: 'Pão crocante e fresquinho, ideal para o café da manhã.',
    pictureURL: 'https://conteudo.imguol.com.br/c/entretenimento/45/2020/10/19/pao-frances---dona-deola-1603113166267_v2_1920x1920.jpg',
    rating: 4.8,
    category: 'Pães',
  ),
  ProductModel(
    name: 'Croissant',
    price: 3.00,
    description: 'Croissant amanteigado e folhado, perfeito para o lanche.',
    pictureURL: 'https://images.tcdn.com.br/img/img_prod/795791/croissant_artesanal_desfrute_do_sabor_frances_autentico_com_o_caminho_da_fazenda_347_1_d5980fbd4efb6408726616175b2e7731.jpg',
    rating: 4.9,
    category: 'Pães',
  ),
  ProductModel(
    name: 'Pão de Queijo',
    price: 1.00,
    description: 'Pão de queijo quentinho e saboroso, feito com queijo minas.',
    pictureURL: 'https://amopaocaseiro.com.br/wp-content/uploads/2022/08/yt-069_pao-de-queijo_receita.jpg',
    rating: 4.9,
    category: 'Pães',
  ),
];

final List<ProductModel> _friosELaticinios = [
  ProductModel(
    name: 'Queijo Mussarela',
    price: 22.00,
    description: 'Queijo mussarela fatiado, ideal para sanduíches e lanches.',
    pictureURL: 'https://phygital-files.mercafacil.com/mercafacil/uploads/produto/queijo_mussarela_interfolhado_kg_3a9492a6-e2b8-42a7-949a-e196acfc6575.jpeg',
    rating: 4.8,
    category: 'Laticínios',
  ),
  ProductModel(
    name: 'Presunto',
    price: 18.00,
    description: 'Presunto cozido fatiado, perfeito para recheios e lanches.',
    pictureURL: 'https://adrianocarnes.com.br/wp-content/uploads/2021/06/559867.png',
    rating: 4.7,
    category: 'Frios',
  ),
  ProductModel(
    name: 'Iogurte Natural',
    price: 4.00,
    description: 'Iogurte natural cremoso, ótimo para um lanche saudável.',
    pictureURL: 'https://achougastronomia.com.br/receitas/wp-content/uploads/2020/07/iogurte.jpg',
    rating: 4.9,
    category: 'Laticínios',
  ),
  ProductModel(
    name: 'Leite Integral',
    price: 3.50,
    description: 'Leite integral fresco e saboroso.',
    pictureURL: 'https://m.media-amazon.com/images/I/71r+BXax3SL._AC_UF1000,1000_QL80_.jpg',
    rating: 4.6,
    category: 'Laticínios',
  ),
  ProductModel(
    name: 'Manteiga',
    price: 7.00,
    description: 'Manteiga com sal, perfeita para pães e torradas.',
    pictureURL: 'hhttps://minhasaude.proteste.org.br/wp-content/uploads/2020/05/manteiga.jpg',
    rating: 4.8,
    category: 'Laticínios',
  ),
  ProductModel(
    name: 'Requeijão',
    price: 6.00,
    description: 'Requeijão cremoso, ideal para pães e biscoitos.',
    pictureURL: 'https://macale.com/eventos/wp-content/uploads/2020/12/cremificacao-do-requeijao-930x600.jpg',
    rating: 4.7,
    category: 'Laticínios',
  ),
];

  List<ProductModel> get confeitaria => _confeitaria;
  List<ProductModel> get paesESalgados => _paesESalgados;
  List<ProductModel> get friosELaticinios => _friosELaticinios;
}