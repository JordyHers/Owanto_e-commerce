import 'package:flutter/material.dart';
import 'package:owanto_app/src/data/model/product.dart';

class ProductItemCase extends StatelessWidget {
  final Product? product;

  const ProductItemCase({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product!.urlImage!.first,
            fit: BoxFit.contain,
            scale: 25 / 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product!.title!),
              IconButton(
                icon: Icon(Icons.favorite_border_sharp),
                onPressed: () {
                  print("DEBUG: Like button Pressed");
                },
              ),
            ],
          ),
          Text(product!.description!),
          Spacer(),
        ],
      ),
    );
  }
}
