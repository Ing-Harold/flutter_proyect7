import 'package:flutter/material.dart';
import 'package:flutter_proyect7/Screens/home/components/categories.dart';
import 'package:flutter_proyect7/Screens/home/components/popular_product.dart';

import 'home_header.dart';

import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: (20 / 375.0) * _mediaQueryData.size.width),
            HomeHeader(),
            // SizedBox(height: getProportionateScreenWidth(10)),
            // DiscountBanner(),
            SizedBox(height: (30 / 375.0) * _mediaQueryData.size.width),
            Categories(),
            SpecialOffers(),
            SizedBox(height: (30 / 375.0) * _mediaQueryData.size.width),
            PopularProducts(),
            SizedBox(height: (30 / 375.0) * _mediaQueryData.size.width),
          ],
        ),
      ),
    );
  }
}
