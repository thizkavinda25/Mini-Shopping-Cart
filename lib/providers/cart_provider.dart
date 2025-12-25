import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List _listItems = [
    ["Avacado", "4.00", "assets/images/avacado.png"],
    ["Banana", "2.50", "assets/images/banana.jpg"],
    ["Chicken", "12.50", "assets/images/chicken.png"],
    ["Water", "2.00", "assets/images/apple.jpg"],
  ];

  List _cartItems = [];
  get listItems => _listItems;
  get cartItems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_listItems[index]);
    notifyListeners();
  }

  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
