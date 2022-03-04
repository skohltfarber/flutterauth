import 'package:flutter/material.dart';
import 'package:flutterauth/constrants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeWidth = size.width * 0.8;
    return TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(sizeWidth, 60),
          backgroundColor: color,
          primary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29.0),
          ),
        ),
        onPressed: press,
        child: Text(text));
  }
}
