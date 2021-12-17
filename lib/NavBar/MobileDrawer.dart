import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:app_studio_webstie/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

NavBarItem _navBarItem = NavBarItem();

class MobileDrawer extends StatefulWidget {
  final Size screenSize;

  const MobileDrawer({Key? key, required this.screenSize}) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  bool _isHovering = false;
  late Size _drawerSize;
  @override
  void initState() {
    super.initState();
    _drawerSize = Size(50 * 4, 50 * 7);
  }

  @override
  Widget build(BuildContext context) {
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
                    children: _navBarItem.NavButtonList(
                      context: context,
                      verticalPadding: 25.0,
                    ),
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
