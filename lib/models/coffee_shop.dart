import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee list

  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '15.10',
      imagePath: 'assets/12.png',
    ),
    Coffee(
      name: 'Latte',
      price: '8.50',
      imagePath: 'assets/123.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '7.60',
      imagePath: 'assets/1.png',
    ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item cart
  void addItemCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove cart item
  void removeItemCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}
