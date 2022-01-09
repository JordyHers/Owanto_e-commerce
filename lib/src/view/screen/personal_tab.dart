import 'package:flutter/material.dart';
import 'package:owanto_app/src/const/app_font.dart';
import 'package:owanto_app/src/router/router_path.dart';
import 'package:owanto_app/src/viewmodel/product_viewmodel.dart';
import 'package:provider/provider.dart';

class PersonalTab extends StatefulWidget {
  @override
  _PersonalTabState createState() => _PersonalTabState();
}

class _PersonalTabState extends State<PersonalTab> {
  Map<String, String> listInfomation = {
    'Mes Commandes': 'Vous avez 2 commandes en cours',
    'Addresse de Livraison': '3 address',
    'Mode de Paiement': 'Visa, Airtel Money ',
    'Commentaires': '3 Retours de produits',
    'Langues': 'Francais - Anglais',
  };

  @override
  Widget build(BuildContext context) {
    var productVM = Provider.of<ProductViewModel>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                child: Icon(Icons.person),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RT56BC",
                      style: AppFont.semiBold.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "email:",
                      style: AppFont.medium.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: listInfomation.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                var title = listInfomation.keys.elementAt(index);
                var subtitle = listInfomation.values.elementAt(index);
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.pushNamed(context, MyOrderScreens);
                        break;
                      case 1:
                        Navigator.pushNamed(context, ChoiceAddressScreens);
                        break;

                      case 3:
                        Navigator.pushNamed(context, RecentViewScreens,
                            arguments: productVM.listRecent);
                        break;
                    }
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      title,
                      style: AppFont.semiBold
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    subtitle: Text(
                      subtitle,
                      style: AppFont.regular.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
