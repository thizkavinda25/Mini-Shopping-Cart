import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imgPath;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Image.asset(imgPath, width: 120, height: 120),
          Text(itemName, style: TextStyle(fontSize: 18)),
          Text('\$$itemPrice', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
