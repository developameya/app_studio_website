import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/NavigatonRoutes.dart';
import 'package:flutter/material.dart';
import 'NavButton.dart';

class NavBarItem {
  List<Widget> NavButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return <Widget>[
      NavButton(
        title: 'features',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'screenshots',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'blog',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'support',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          bool isNewRouteSameAsCurrentRoute = false;
          Navigator.popUntil(
            context,
            (route) {
              print(route.settings.name);
              if (route.settings.name == supportPage) {
                isNewRouteSameAsCurrentRoute = true;
              }
              return true;
            },
          );

          if (!isNewRouteSameAsCurrentRoute) {
            Navigator.pushNamed(context, supportPage);
          }
        },
      ),
    ];
  }

  InkWell NavLogo({void Function()? action, double? height}) {
    return InkWell(
      onTap: action,
      child: Image.asset(
        logoImage,
        height: height,
      ),
    );
  }
}
