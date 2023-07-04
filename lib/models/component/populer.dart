import 'package:flutter/material.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/models/component/product_card.dart';
import 'package:shop_ui/models/component/section_title.dart';
import 'package:shop_ui/screens/constants.dart';

class Populer extends StatelessWidget {
  const Populer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Populer",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                        image: demo_product[index].image,
                        title: demo_product[index].title,
                        price: demo_product[index].price,
                        bgColor: demo_product[index].bgColor,
                        press: () {},
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
