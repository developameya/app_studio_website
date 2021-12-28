import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Constants/NavigatonRoutes.dart';
import 'package:flutter/material.dart';
import 'NavButton.dart';

class NavBarItem {
  List<Widget> HomeNavButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
    required GlobalKey featuresKey,
    required GlobalKey screenshotKey,
    required GlobalKey downloadKey,
  }) {
    return <Widget>[
      NavButton(
          title: 'features',
          verticaPadding: verticalPadding,
          horizontalPadding: horizontalPadding,
          onTap: () {
            Navigator.pop(context);
            if (ModalRoute.of(context)!.settings.name != routeHome) {
              Navigator.popUntil(context, ModalRoute.withName(routeHome));
            } else {
              Scrollable.ensureVisible(featuresKey.currentContext ?? context);
            }
            ;
          }),
      NavButton(
        title: 'screenshots',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.pop(context);
          if (ModalRoute.of(context)!.settings.name != routeHome) {
            Navigator.popUntil(context, ModalRoute.withName(routeHome));
          } else {
            Scrollable.ensureVisible(screenshotKey.currentContext ?? context);
          }
          ;
        },
      ),
      NavButton(
        title: 'download',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.pop(context);
          if (ModalRoute.of(context)!.settings.name != routeHome) {
            Navigator.popUntil(context, ModalRoute.withName(routeHome));
          } else {
            Scrollable.ensureVisible(downloadKey.currentContext ?? context);
          }
          ;
        },
      ),
      NavButton(
        title: 'support',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.pop(context);
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

  List<Widget> supportNavButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return <Widget>[
      NavButton(
        title: 'terms of use',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.pushNamed(context, termsOfUsePage);
        },
      ),
      NavButton(
        title: 'Privacy Policy',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.pushNamed(context, privacyPolicyPage);
        },
      ),
    ];
  }

  List<Widget> termsOfUseNavBarButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return <Widget>[
      NavButton(
        title: 'Privacy Policy',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.popAndPushNamed(context, privacyPolicyPage);
        },
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

  List<Widget> privacyPolicyNavBarButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return <Widget>[
      NavButton(
        title: 'TermsOfUse',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.popAndPushNamed(context, termsOfUsePage);
        },
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

  InkWell NavLogo(
      {double? height, required BuildContext context, GlobalKey? heroKey}) {
    return InkWell(
      onTap: () {
        if (ModalRoute.of(context)!.settings.name != routeHome) {
          Navigator.popUntil(context, ModalRoute.withName(routeHome));
        }
        Scrollable.ensureVisible(heroKey!.currentContext ?? context);
      },
      child: Image.asset(
        logoImage,
        height: height,
      ),
    );
  }
}
