import 'package:flutter/material.dart';

class CartBottomNavigationBar extends StatefulWidget {
  const CartBottomNavigationBar({super.key});

  @override
  State<CartBottomNavigationBar> createState() =>
      _CartBottomNavigationBarState();
}

class _CartBottomNavigationBarState extends State<CartBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Text("Total: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(" \$80",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
            ],
          ),
          Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text("Order Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          )
        ]),
      ),
    );
  }
}
