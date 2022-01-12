import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/color_constants.dart';

ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
    primaryColor: electricViolet,
    primaryColorLight: wildSand,
    appBarTheme: AppBarTheme(color: wildSand, elevation: 0, centerTitle: true),
    scaffoldBackgroundColor: wildSand,
  );
}
