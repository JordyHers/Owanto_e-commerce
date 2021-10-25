import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  List<String> listImage =  [
    'https://gramhir.com/hosted-by-instagram/url=https%3A%7C%7C%7C%7Cinstagram.fkiv3-1.fna.fbcdn.net%7C%7Cv%7C%7Ct51.2885-15%7C%7Ce35%7C%7Cp1080x1080%7C%7C241313984_958078721424436_7054766445570090416_n.jpg%3F_nc_ht%3Dinstagram.fkiv3-1.fna.fbcdn.net%26_nc_cat%3D104%26_nc_ohc%3D3d_Amuj-ZxYAX_w--7e%26edm%3DAABBvjUBAAAA%26ccb%3D7-4%26oh%3D9b69c729ec8bc6ec33a5e6e25e054512%26oe%3D617E1160%26_nc_sid%3D83d603',
      'https://gramhir.com/hosted-by-instagram/url=https%3A%7C%7C%7C%7Cscontent-waw1-1.cdninstagram.com%7C%7Cv%7C%7Ct51.2885-15%7C%7Csh0.08%7C%7Ce35%7C%7Cp640x640%7C%7C241213815_858570478366709_6501931655477916279_n.jpg%3F_nc_ht%3Dscontent-waw1-1.cdninstagram.com%26_nc_cat%3D105%26_nc_ohc%3DqMRMOU6IPPUAX-nPd-M%26edm%3DAPU89FABAAAA%26ccb%3D7-4%26oh%3D38f910a2cd5a6cfd1c73c03e8ea5c630%26oe%3D617D2DEE%26_nc_sid%3D86f79a',
      'https://gramhir.com/hosted-by-instagram/url=https%3A%7C%7C%7C%7Cinstagram.flwo4-1.fna.fbcdn.net%7C%7Cv%7C%7Ct51.2885-15%7C%7Csh0.08%7C%7Ce35%7C%7Cp640x640%7C%7C241313750_6094266230648191_889461366199470818_n.jpg%3F_nc_ht%3Dinstagram.flwo4-1.fna.fbcdn.net%26_nc_cat%3D107%26_nc_ohc%3DesbpHQeBl0AAX9vwleV%26edm%3DAPU89FABAAAA%26ccb%3D7-4%26oh%3D1133c2171a410f9ef7bc4168785c32aa%26oe%3D617E40F5%26_nc_sid%3D86f79a',
            // 'https://images.pexels.com/photos/2657594/pexels-photo-2657594.jpeg?cs=srgb&dl=pexels-vinicius-altava-2657594.jpg&fm=jpg',

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
      items: listImage.map((e) => Builder(
        builder:(BuildContext context)=> Container(
          height: 400,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.network(e, fit: BoxFit.fill,)),
      )).toList(),
    );
  }
}
