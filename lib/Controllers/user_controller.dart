import 'package:flutter/material.dart';
import 'package:rainhadobel/Database/user_database.dart';
import 'package:rainhadobel/Models/product_model.dart';
import 'package:rainhadobel/Models/user_model.dart';
import 'package:rainhadobel/Views/Pages/homepage.dart';

class UserController with ChangeNotifier {
  UserDatabase userDatabase = UserDatabase();

  void addToShoppingCart(String userEmail, ProductModel product){
    UserModel? user = userDatabase.users.firstWhere((user) => user.email == userEmail);
    if (user.email.isNotEmpty){
     user.addProduct(product);
    }
  }


  void signIn(context, String email, String password){
    if (email.isNotEmpty && email.contains('@')){
      UserModel user = UserModel(email: email, password: password);
      notifyListeners();
      userDatabase.users.add(user);
      login(context, email, password);
    }else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Credenciais inválidas'),
        )
      );
    }
  }

  void login(context, String email, String password){
    var users = userDatabase.users;
    var result = users.where((user) => user.email == email);
    notifyListeners();
    if (result.isNotEmpty) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomePage()));
    }else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Senha Inválida'),
        )
      );
    }
  }

  Future<List<ProductModel>> shoppingCartUser(index) async
  {
  return userDatabase.users[index].products;
  }
}