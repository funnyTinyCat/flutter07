import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {

  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: "Black Coffee", 
      price: "3.14", 
      imagePath: "lib/images/black.png",
    ),

    // latte
    Coffee(
      name: "Latte", 
      price: "5.2", 
      imagePath: "lib/images/latte.png",
    ),

    // espresso
    Coffee(
      name: "Espresso", 
      price: "2", 
      imagePath: "lib/images/espresso.png",
    ),

    // iced coffee
    Coffee(
      name: "Iced Coffee", 
      price: "12.4", 
      imagePath: "lib/images/iced_coffee.png",
    ),

  ];


  // user cart
  final List<Coffee> _userCart = [];


  // get coffee list  
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to the cart
  void addItemToCart(Coffee coffee) {

    _userCart.add(coffee);
    notifyListeners();
  }
  // remove item from the cart
  void removeItemFromCart(Coffee coffee) {

    _userCart.remove(coffee);
    notifyListeners();
  }


}