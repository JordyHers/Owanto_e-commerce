import 'package:flutter/material.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_articles_titles_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_collection_image_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_main_image_section.dart';

import 'component/ow_search_bar/ow_search_bar.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomSearchBar(),
              MainImageSection(),
              const SizedBox(height: 10),
              CollectionImageSection(),
              const SizedBox(height: 10),
              ArticlesTitlesSection(),
              //  BodyPage(),
              // HeaderPage(),
              const SizedBox(height: 200)
            ],
          ),
        ),
      ),
    );
  }
}
