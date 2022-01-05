import 'package:flutter/material.dart';
import 'package:app_studio_webstie/Widgets/TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class NavButton extends StatefulWidget {
  final void Function()? onTap;
  final String label;
  final double? fontSize;
  final double? verticaPadding;
  final double? horizontalPadding;

  NavButton({
    Key? key,
    required this.label,
    this.fontSize,
    this.onTap,
    this.verticaPadding,
    this.horizontalPadding,
  }) : super(key: key);

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
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticaPadding ?? 0.0,
        horizontal: widget.horizontalPadding ?? 0.0,
      ),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(getColor),
        ),
        onPressed: widget.onTap,
        child: _textFormatter.navButtonText(text: widget.label),
      ),
    );
  }
}
