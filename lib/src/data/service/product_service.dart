import 'package:owanto_app/src/data/model/inventory.dart';
import 'package:owanto_app/src/data/model/product.dart';



List<Inventory>? inventories =[
  Inventory(id: '1',color: 'blue', size: '23'),
  Inventory(id: '2',color: 'black', size: '35'),
  Inventory(id: '3',color: 'blue', size: '41'),
];

class ProductService {

  List<Product> listProduct = [
    for(int i =0; i<=10; i++)
      Product(
          id: '$i',
          title: "Robe $i",
          description: "Description $i ",
          price: i%2 == 0 ? i * 3000 + 2000 : i *2500 +2000,
          amountProduct: i,
          createAt: "10/10/2011",
          isLike: false,
          urlImage: [
            'https://gramhir.com/hosted-by-instagram/url=https%3A%7C%7C%7C%7Cscontent-waw1-1.cdninstagram.com%7C%7Cv%7C%7Ct51.2885-15%7C%7Csh0.08%7C%7Ce35%7C%7Cp640x640%7C%7C241213815_858570478366709_6501931655477916279_n.jpg%3F_nc_ht%3Dscontent-waw1-1.cdninstagram.com%26_nc_cat%3D105%26_nc_ohc%3DqMRMOU6IPPUAX-nPd-M%26edm%3DAPU89FABAAAA%26ccb%3D7-4%26oh%3D38f910a2cd5a6cfd1c73c03e8ea5c630%26oe%3D617D2DEE%26_nc_sid%3D86f79a'
          ],
          inventory: inventories,
          category: "Dress"),


  ];



  Future<List<Product>> getListProduct() async {
    return listProduct;
  }


}
