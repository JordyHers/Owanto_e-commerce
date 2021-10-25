import 'package:owanto_app/src/const/app_colors.dart';
import 'package:owanto_app/src/const/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://gramhir.com/hosted-by-instagram/url=https%3A%7C%7C%7C%7Cscontent-waw1-1.cdninstagram.com%7C%7Cv%7C%7Ct51.2885-15%7C%7Csh0.08%7C%7Ce35%7C%7Cp640x640%7C%7C241213815_858570478366709_6501931655477916279_n.jpg%3F_nc_ht%3Dscontent-waw1-1.cdninstagram.com%26_nc_cat%3D105%26_nc_ohc%3DqMRMOU6IPPUAX-nPd-M%26edm%3DAPU89FABAAAA%26ccb%3D7-4%26oh%3D38f910a2cd5a6cfd1c73c03e8ea5c630%26oe%3D617D2DEE%26_nc_sid%3D86f79a',
                    fit: BoxFit.cover,
                    width: 160,
                    height: 220,
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  left: 7,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColorRed,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Text(
                      '20%',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )),
              Positioned(
                  top: 5,
                  right: 7,
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.white,
                  )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  width: 40,
                  height: 40,
                  child: Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColorRed,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              offset: Offset(1, 1),
                              spreadRadius: 3,
                              blurRadius: 3),
                        ],
                      ),
                      child: SvgPicture.asset(
                        'assets/image/bag_active.svg',
                        fit: BoxFit.scaleDown,
                        color: Colors.white,
                      ))),
            ],
          ),
          // Row(
          //   children: [
          //     RatingBar.builder(
          //       initialRating: 5,
          //       direction: Axis.horizontal,
          //       itemSize: 15,
          //       itemCount: 5,
          //       ignoreGestures: true,
          //       itemBuilder: (context, _) => Icon(
          //         Icons.star,
          //         color: Colors.amber,
          //       ),
          //       onRatingUpdate: (rating) {
          //         print(rating);
          //       },
          //     ),
          //     SizedBox(
          //       width: 5,
          //     ),
          //     Text('(10)')
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          // Text(
          //   'Danh muc',
          //   style: AppFont.regular.copyWith(
          //     fontSize: 13,
          //     color: Colors.grey,
          //     fontWeight: FontWeight.normal,
          //   ),
          // ),
          // SizedBox(
          //   height: 8,
          // ),
          // Text(
          //   'Tiêu đề',
          //   style: AppFont.bold.copyWith(
          //     fontSize: 17,
          //   ),
          // ),
          SizedBox(
            height: 8,
          ),
          Text(
            '1000',
            style: AppFont.bold
                .copyWith(fontSize: 14, color: AppColors.primaryColorRed),
          ),
        ],
      )),
    );
  }
}
