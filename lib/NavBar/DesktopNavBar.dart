import 'package:app_studio_webstie/Pages/ContactPage.dart';
import 'package:app_studio_webstie/Pages/PrivacyPolicyPage.dart';
import 'package:app_studio_webstie/Pages/TermsOfUsePage.dart';
import 'package:app_studio_webstie/Widgets/LegalPage.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/NavButton.dart';

import '../Constants/AppImages.dart';

class DesktopNavBar extends StatefulWidget {
  final Size screenSize;
  const DesktopNavBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: headerColor,
        boxShadow: [headerShadow],
      ),
      child: Padding(
        padding: ResponsiveWidget.isMediumScreen(context)
            ? EdgeInsets.symmetric(horizontal: widget.screenSize.width / 42)
            : EdgeInsets.symmetric(horizontal: widget.screenSize.width / 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  logoImage,
                ),
                SizedBox(width: 30),
                NavButton(
                  title: 'features',
                  onTap: () {},
                ),
                SizedBox(width: 30),
                NavButton(
                  title: 'screenshots',
                  onTap: () {},
                ),
              ],
            ),
            Row(
              children: [
                NavButton(
                  title: 'blog',
                  onTap: () {},
                ),
                SizedBox(width: 30),
                NavButton(
                  title: 'contact',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
