import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/constants.dart';
import 'package:shop_ui/screens/details/componen_color.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  child: SvgPicture.asset(
                    "asset/icons/Heart.svg",
                    height: 20,
                  )))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2,
                defaultPadding, defaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 4),
                    topRight: Radius.circular(defaultBorderRadius * 4))),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text(
                      "\$" + product.price.toString(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      "Untuk melindungi tubuh dari sengatan panas, dingin, manusia butuh sandang alias pakaian. Namun, seiring berkembangnya zaman"),
                ),
                Text(
                  "Color",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    ColorDot(
                      color: Color(0xffbee8ea),
                      isActive: false,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color.fromARGB(255, 218, 100, 22),
                      isActive: false,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color.fromARGB(255, 234, 190, 197),
                      isActive: false,
                      press: () {},
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor, shape: StadiumBorder()),
                    child: Text("Add to cart"))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
