import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../core/extension/context_extension.dart';

class MyElevatedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? onPressed;

  const MyElevatedButton(
      {Key? key, required this.color, this.onPressed, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(color: wildSand),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize:
              Size(context.dynamicWitdh(0.8), context.dynamicHeight(0.09)),
          primary: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
