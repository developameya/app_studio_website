import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  final List<Widget> navButtonList;
  final Size screenSize;

  const NavDrawer({
    Key? key,
    required this.navButtonList,
    required this.screenSize,
  }) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  bool _isHovering = false;
  late Size _drawerSize;
  @override
  void initState() {
    super.initState();
    // _drawerSize = Size(50 * 5, 50 * 6);
    _drawerSize = Size(
      widget.screenSize.width / 1.5,
      widget.screenSize.height,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: _drawerSize.width,
          height: _drawerSize.height,
          child: Drawer(
            child: Container(
              color: headerColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onHover: (value) {
                        setState(
                          () {
                            _isHovering = value;
                          },
                        );
                      },
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: 30,
                        color: _isHovering ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: widget.navButtonList,
                  ),
                  SizedBox(width: 32),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
