import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

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
            _navBarItem.NavLogo(height: widget.screenSize.width / 35),
            Row(
              children: _navBarItem.NavButtonList(context: context),
            ),
          ],
        ),
      ),
    );
  }
}
