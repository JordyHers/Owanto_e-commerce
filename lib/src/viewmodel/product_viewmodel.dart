import 'package:owanto_app/src/data/model/product.dart';
import 'package:owanto_app/src/data/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  ProductService? productService = ProductService();
  List<Product>? listProduct;
  List<Product>? listRecent = <Product>[];
  bool isLoading = false;
  int? isLikee = 0;
  int selectIndex = 0 ;
  Product? productt;

  Future<List<Product>>? getListProduct()  {
    isLoading = true;
    notifyListeners();
    listProduct = productService?.listProduct;
    isLoading = false;
    notifyListeners();
  }

   Future likeProduct (Product product)  async {
    print(product.title);

  }

   addRecentView(Product product){
    if (listRecent!.isEmpty) {
      listRecent?.add(product);
    }  else{
      if (listRecent!.contains(product)) {

      } else{
        listRecent?.add(product);
      }
    }
  }
  chooseOption(int index){
    selectIndex = index;
    notifyListeners();
  }

}
