import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/screens/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
            decoration: InputDecoration(
      filled: true,
      hintText: "Search item.....",
      fillColor: Colors.white,
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      prefixIcon: Padding(
        padding: const EdgeInsets.all(15),
        child: SvgPicture.asset("asset/icons/Search.svg"),
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ),
        child: SizedBox(
            height: 48,
            width: 48,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadius)))),
                child: SvgPicture.asset("asset/icons/Filter.svg"))),
      ),
    )));
  }
}

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
