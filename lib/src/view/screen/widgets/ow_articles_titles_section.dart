import 'package:flutter/material.dart';
import 'package:owanto_app/src/const/app_font.dart';

class ArticlesTitlesSection extends StatelessWidget {
  const ArticlesTitlesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 400,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Femmes",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
            const SizedBox(height: 20),
            Text(
              "Robes",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
            const SizedBox(height: 20),
            Text(
              "Chaussures",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
            const SizedBox(height: 20),
            Text(
              "Combinaisons",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
            const SizedBox(height: 20),
            Text(
              "Pareo",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
            const SizedBox(height: 20),
            Text(
              "Nouvelle Collection",
              style: AppFont.medium.copyWith(fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
