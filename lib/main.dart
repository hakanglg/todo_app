import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/color_constants.dart';
import 'theme.dart';
import 'views/splash/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(context),
      home: SplashView(),
    );
  }
}
