import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/constants/color_constants.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/views/splash/splash_view.dart';

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
