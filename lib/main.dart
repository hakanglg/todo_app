import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/routes.dart';
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
      // home: SplashView(),
      routes: routes,
      initialRoute: SplashView.routeName,
    );
  }
}
