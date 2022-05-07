import 'package:owanto_app/src/const/app_colors.dart';
import 'package:owanto_app/src/view/screen/cart_tab.dart';
import 'package:owanto_app/src/view/screen/category_tab.dart';
import 'package:owanto_app/src/view/screen/favorite_tab.dart';
import 'package:owanto_app/src/view/screen/personal_tab.dart';

import 'package:owanto_app/src/viewmodel/bottom_navigate_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'home_tab.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<Widget> page = [
    HomeTab(),
    CategoryTab(),
    CartTab(),
    FavoriteTab(),
    PersonalTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomProvider = Provider.of<BottomNavigationProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[bottomProvider.currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey.shade400,
          selectedItemColor: Colors.black87 ,
          currentIndex: bottomProvider.currentIndex,
          onTap: (int index){
            bottomProvider.changePageTab =index;
          },
          items: const  [
            BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined,),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon:  Icon(Icons.shopping_bag),
              icon:  Icon(Icons.shopping_bag_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon:  Icon(Icons.favorite),
              icon:  Icon(Icons.favorite_outline),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Icon(Icons.person_rounded),
              icon:  Icon(Icons.person_outline_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
