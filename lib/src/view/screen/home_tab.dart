import 'package:owanto_app/src/data/service/product_service.dart';
import 'package:owanto_app/src/view/screen/component/hometab/body_page.dart';
import 'package:owanto_app/src/view/screen/component/hometab/header_page.dart';
import 'package:owanto_app/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'component/ow_search_bar/ow_search_bar.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomSearchBar(),
              HeaderPage(),
              const SizedBox(
                height: 20,
              ),
              BodyPage(
              ),
              const SizedBox(height: 200)
            ],
          ),
        ),
      ),
    );
  }
}
