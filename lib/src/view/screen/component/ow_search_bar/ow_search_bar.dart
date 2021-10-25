import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: ListTile(
        leading: Icon(Icons.search),
        trailing: SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.black,
              focusColor: Colors.black,
              // prefixText: 'Recherche des produits',
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: 'Rechercher des produits',
              hintStyle: TextStyle()
            ),
          ),
        ),
      ),
    );
  }
}
