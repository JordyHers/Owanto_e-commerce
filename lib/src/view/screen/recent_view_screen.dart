import 'package:flutter/material.dart';
import 'package:owanto_app/src/const/app_font.dart';
import 'package:owanto_app/src/data/model/product.dart';
import 'package:owanto_app/src/view/screen/component/hometab/cart_product.dart';

class RecentViewScreen extends StatelessWidget {
  final List<Product>? listRecentProduct;

  const RecentViewScreen({Key? key, this.listRecentProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "commentaires",
          style: AppFont.semiBold.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 80 / 140),
        itemCount: listRecentProduct?.length,
        itemBuilder: (_, index) {
          Product? product = listRecentProduct![index];
          return CartProduct(
            product: product,
          );
        },
      ),
    );
  }
}
