import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

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
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.focused,
      MaterialState.hovered
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue[200] ?? Colors.blue;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(getColor),
      ),
      onPressed: widget.onTap,
      child: _textFormatter.navButtonText(text: widget.title),
    );
  }
}
