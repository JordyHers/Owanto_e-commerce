import 'package:flutter/material.dart';

class CartEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Votre panier est vide "), Icon(Icons.info_rounded)],
      )),
    );
  }
}
