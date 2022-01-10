import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i <= 7; i++)
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Image.asset("assets/owanto/model_$i.png"),
                // child: Column(
                //   children: [
                //     Image.asset("assets/owanto/model_$i.png"),
                //     Text(
                //       "Model $i",
                //       style: AppFont.mini_white
                //           .copyWith(color: Colors.black, fontSize: 8),
                //     )
                //   ],
                // )
              )
          ],
        ));
  }
}
