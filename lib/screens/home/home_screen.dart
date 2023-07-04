import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/models/Category.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/models/component/new_arival.dart';
import 'package:shop_ui/models/component/populer.dart';
import 'package:shop_ui/models/component/product_card.dart';

import 'package:shop_ui/models/component/search_form.dart';
import 'package:shop_ui/screens/constants.dart';
import 'package:shop_ui/models/component/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("asset/icons/menu.svg")),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("asset/icons/Location.svg"),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "15/2 New Depok",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("asset/icons/Notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explorer",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            Catagories(),
            SizedBox(
              height: defaultPadding,
            ),
            NewArival(),
            SizedBox(
              height: defaultPadding,
            ),
            Populer()
          ],
        ),
      ),
    );
  }
}
