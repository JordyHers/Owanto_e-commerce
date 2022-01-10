import 'package:flutter/material.dart';
import 'package:owanto_app/src/const/app_font.dart';

class TuniqueSection extends StatelessWidget {
  const TuniqueSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Image.asset(
                'assets/owanto/tunique.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
                child: Container(color: Colors.black.withOpacity(0.2))),
            Positioned(
                top: 10,
                bottom: -10,
                right: 0,
                left: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    Text(
                      "Nos Tuniques",
                      style: AppFont.bold
                          .copyWith(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "Decouvrez nos tuniques aux motifs uniques.\n "
                        "\n",
                        style: AppFont.medium.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: Text(
                        "Avec des offres speciales accedez aux cooupons et obtenez jusqu'a"
                        "25% de reductions !",
                        style: AppFont.medium.copyWith(fontSize: 10),
                      ),
                    ),
                    Spacer(),
                  ],
                ))
          ],
        )
      ],
    );
  }
}
