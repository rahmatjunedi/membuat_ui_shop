import 'package:flutter/material.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/models/component/product_card.dart';
import 'package:shop_ui/models/component/section_title.dart';
import 'package:shop_ui/screens/constants.dart';
import 'package:shop_ui/screens/details/detail_screen.dart';

class NewArival extends StatelessWidget {
  const NewArival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arival",
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
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        product: demo_product[index],
                                      )));
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
