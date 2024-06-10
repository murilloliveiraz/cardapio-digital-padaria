import 'package:rainhadobel/Models/product_model.dart';

class UserModel {
  String email;
  String password;
  List<ProductModel> products = [];

  UserModel({required this.email, required this.password});

  void addProduct(ProductModel product){
    products.add(product);
  }

  void removeProduct(int id){
    ProductModel product = products[id];
    products.remove(product);
  }
}