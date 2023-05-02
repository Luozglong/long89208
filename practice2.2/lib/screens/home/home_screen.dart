import 'package:android_studio_file/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Sample Code'),
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
            "assets/icons/iconmonstr-undo-7.svg", color: kTextColor),
        onPressed: () {},
      ),
      actions: <Widget>[

        IconButton(
          icon: SvgPicture.asset(
              "assets/icons/iconmonstr-search-thin.svg", color: kTextColor),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
              "assets/icons/add-to-cart-icon.svg", color: kTextColor),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],

    );
  }
}