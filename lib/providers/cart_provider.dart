import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List _listItems = [
    ["Avacado","4.00","assets/images/avacado.png"],
    ["Banana","2.50","assets/images/banana.jpg"],
    ["Chicken","12.50","assets/images/chicken.png"],
    ["Water","2.00","assets/images/apple.jpg"],
  ];

  get listItems => _listItems;
}