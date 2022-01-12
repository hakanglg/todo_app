import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mySvgPicture extends StatelessWidget {
  final double height;
  final Color color;
  final String logo;

  const mySvgPicture(
      {Key? key, required this.height, required this.logo, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logo,
      height: height,
      color: color,
      //width: context.dynamicWitdh(0.04)
    );
  }
}
