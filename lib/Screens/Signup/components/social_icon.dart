import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauth/constrants.dart';

class SocialIcon extends StatelessWidget {
  final String iconStr;
  final VoidCallback onTap;

  const SocialIcon({
    Key? key,
    required this.iconStr,
    required this.onTap,
  }) : super(key: key);

  get kPrimaryLightColor => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconStr,
          height: 20,
          width: 20,
        ),
      ),
      onTap: onTap,
    );
  }
}
