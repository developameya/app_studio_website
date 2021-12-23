import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/NavigatonRoutes.dart';
import 'package:flutter/material.dart';
import 'NavButton.dart';

class NavBarItem {
  List<Widget> NavButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
    GlobalKey? heroKey,
    GlobalKey? featuresKey,
    GlobalKey? screenshotKey,
  }) {
    return <Widget>[
      NavButton(
        title: 'features',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () =>
            Scrollable.ensureVisible(featuresKey!.currentContext ?? context),
      ),
      NavButton(
        title: 'screenshots',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () =>
            Scrollable.ensureVisible(screenshotKey!.currentContext ?? context),
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
              //check the name of the current route/page.
              if (route.settings.name == supportPage) {
                isNewRouteSameAsCurrentRoute = true;
              }
              return true;
            },
          );
          //if the current route/page is not the page we are trying to push with this method, then push the new page/route.
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
