import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/color_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';
import '../../core/extension/context_extension.dart';
import 'components/body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
