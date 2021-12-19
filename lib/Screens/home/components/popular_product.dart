import 'package:flutter/material.dart';
import 'package:flutter_proyect7/models/Product.dart';
import 'package:flutter_proyect7/widgets/product_card.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQueryData = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (20 / 375.0) * _mediaQueryData.size.width),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: (20 / 375.0) * _mediaQueryData.size.width),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: (20 / 375.0) * _mediaQueryData.size.width),
            ],
          ),
        ),
      ],
    );
  }
}
