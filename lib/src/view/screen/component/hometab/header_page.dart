import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  List<String> listImage = [
    'https://images.pexels.com/photos/2657594/pexels-photo-2657594.jpeg?cs=srgb&dl=pexels-vinicius-altava-2657594.jpg&fm=jpg',
    'https://images.pexels.com/photos/2657594/pexels-photo-2657594.jpeg?cs=srgb&dl=pexels-vinicius-altava-2657594.jpg&fm=jpg',
    'https://images.pexels.com/photos/2657594/pexels-photo-2657594.jpeg?cs=srgb&dl=pexels-vinicius-altava-2657594.jpg&fm=jpg',
    'https://images.pexels.com/photos/2657594/pexels-photo-2657594.jpeg?cs=srgb&dl=pexels-vinicius-altava-2657594.jpg&fm=jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        autoPlay: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        enlargeCenterPage: true,
        pauseAutoPlayOnManualNavigate: true,

        // autoPlay: false,
      ),
      items: listImage
          .map((e) => Builder(
                builder: (BuildContext context) => Container(
                    height: 400,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image.network(
                      e,
                      fit: BoxFit.fill,
                    )),
              ))
          .toList(),
    );
  }
}
