import 'package:flutter/material.dart';
import 'package:owanto_app/src/const/app_font.dart';

class MainImageSection extends StatelessWidget {
  const MainImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 300,
        color: Color(0xffAD071D),
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Obtenez plus de reductions!",
              style: AppFont.normal_white,
            ),
            const SizedBox(height: 30),
            Text(
              "%70 disponible",
              style: AppFont.large_white,
            ),
            const SizedBox(height: 10),
            Text(
              "Soldes",
              style: AppFont.large_white,
            ),
            const SizedBox(height: 40),
            Text(
              "Nos offres Speciales",
              style: AppFont.normal_white,
            ),
            Spacer(),
            Text(
              "Pour plus d'informations contactez nous!",
              style: AppFont.mini_white,
            ),
          ],
        ),
      ),
    );
  }
}
