import 'package:flutter/material.dart';
import 'package:owanto_app/src/viewmodel/product_viewmodel.dart';
import 'package:provider/provider.dart';

class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductViewModel>(context, listen: false);
    productProvider.listProduct!.forEach((element) {
      print(element.isLike);
    });
    return SafeArea(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Aucun produit favorisé "), Icon(Icons.info_rounded)],
      )),
    );
  }
}
