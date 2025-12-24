import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shopping_cart/providers/cart_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/grocery_item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning,',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
              ),
              SizedBox(height: 5),
              _topTitle(),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Divider(),
              ),
              Text(
                'Fresh Items',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Consumer<CartProvider>(
                builder: (context, value, widget) {
                  return Expanded(
                    child: GridView.builder(
                      itemCount: value.listItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          imgPath: value.listItems[index][2],
                          itemName: value.listItems[index][0],
                          itemPrice: value.listItems[index][1],
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _topTitle() {
  return Text(
    "Let's order fresh\nitems for you",
    style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),
  );
}
