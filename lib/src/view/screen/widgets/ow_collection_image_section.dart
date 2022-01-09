import 'package:flutter/material.dart';

class CollectionImageSection extends StatelessWidget {
  const CollectionImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
          height: 400,
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          padding: EdgeInsets.all(30),
          child: Image.asset(
            'assets/owanto/collection.png',
            fit: BoxFit.fitWidth,
          )),
    );
  }
}
