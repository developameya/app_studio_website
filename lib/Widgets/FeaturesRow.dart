import 'package:flutter/material.dart';
import 'TextFormatter.dart';

TextFormatter _textFormatter = TextFormatter();

class FeaturesRow extends StatefulWidget {
  final String imagePath;
  final String headerText;
  final String bodyText;
  final double? leftMargin;
  final double? middleMargin;
  const FeaturesRow(
      {Key? key,
      required this.imagePath,
      required this.headerText,
      required this.bodyText,
      this.leftMargin,
      this.middleMargin})
      : super(key: key);

  @override
  State<FeaturesRow> createState() => _FeaturesRowState();
}

class _FeaturesRowState extends State<FeaturesRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: widget.leftMargin ?? 0),
          Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: 38,
              ),
              SizedBox(height: 10),
              _textFormatter.featuresHeader(
                  text: widget.headerText, fontSize: 14),
            ],
          ),
          SizedBox(width: widget.middleMargin ?? 30),
          Expanded(
            child: _textFormatter.featuresSubHeader(
                text: widget.bodyText, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
