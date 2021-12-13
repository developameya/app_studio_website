import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final void Function()? onTap;
  final String title;
  final double? fontSize;
  NavButton({Key? key, required this.title, this.fontSize, this.onTap})
      : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onHover: (value) {
              setState(
                () {
                  _isHovering = value;
                },
              );
            },
            onTap: widget.onTap,
            child: Text(
              widget.title.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: widget.fontSize ?? 12,
                color: _isHovering ? Colors.blue[200] : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
