import 'package:flutter/material.dart';

class CartEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Votre panier est vide !"),
      ),
    );
  }
}
