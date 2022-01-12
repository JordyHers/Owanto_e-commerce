import 'package:flutter/material.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_articles_titles_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_collection_image_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_header_title.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_main_image_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_popular_section.dart';
import 'package:owanto_app/src/view/screen/widgets/ow_tuniques_section.dart';

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
              //ALL WIDGETS ARE FOUND IN WIDGETS FOLDER
              const CustomSearchBar(),
              MainImageSection(),
              const SizedBox(height: 10),
              const HeaderBody(
                  title: "Nouvelle Collection",
                  description: "Decouvrez nos nouvelles tenues "),
              CollectionImageSection(),
              const SizedBox(height: 10),
              ArticlesTitlesSection(),
              const HeaderBody(
                  title: "Populaire",
                  description: "Decouvrez les plus populaires "),
              PopularSection(),
              const SizedBox(height: 10),
              TuniqueSection(),
              const SizedBox(height: 200)
            ],
          ),
        ),
      ),
    );
  }
}
