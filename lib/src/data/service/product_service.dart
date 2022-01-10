import 'package:owanto_app/src/data/model/inventory.dart';
import 'package:owanto_app/src/data/model/product.dart';

List<Inventory>? inventories = [
  Inventory(id: '1', color: 'blue', size: '23'),
  Inventory(id: '2', color: 'black', size: '35'),
  Inventory(id: '3', color: 'blue', size: '41'),
];

class ProductService {
  List<Product> listProduct = [
    for (int i = 0; i <= 7; i++)
      Product(
          id: '$i',
          title: "Robe $i",
          description: "Description $i ",
          price: i % 2 == 0 ? i * 3000 + 2000 : i * 2500 + 2000,
          amountProduct: i,
          createAt: "10/10/2011",
          isLike: false,
          urlImage: [
            "assets/owanto/model_$i.png",
          ],
          inventory: inventories,
          category: "Dress"),
  ];

  Future<List<Product>> getListProduct() async {
    return listProduct;
  }
}
