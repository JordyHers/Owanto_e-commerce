
import 'package:owanto_app/src/const/app_colors.dart';
import 'package:owanto_app/src/router/routerr.dart';
import 'package:owanto_app/src/view/screen/dash_board_screen.dart';
import 'package:owanto_app/src/viewmodel/address_viewmodel.dart';
import 'package:owanto_app/src/viewmodel/auth_viemodel.dart';
import 'package:owanto_app/src/viewmodel/bottom_navigate_provider.dart';
import 'package:owanto_app/src/viewmodel/cart_viewmodel.dart';
import 'package:owanto_app/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_)=> CartViewModel()),
        ChangeNotifierProvider(create: (_)=> AddressViewModel()),
        ChangeNotifierProvider(create: (_)=> ProductViewModel()..getListProduct()),
        ChangeNotifierProvider(create: (_)=>AuthViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
          primaryColor: Colors.black,
        ),
        onGenerateRoute: Routerr.onGenerateRouter,
        home: DashBoardScreen(),
      ),
    );
  }
}
