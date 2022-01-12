import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicWitdh(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  ThemeData get theme => Theme.of(this);
}

extension NumberExtension on BuildContext {
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicHeight(0.05);
  double get highValue => dynamicHeight(0.1);
}

extension PaddingExtension on BuildContext {
  // PADDING ALL
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingAllMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingAllHigh => EdgeInsets.all(highValue);

  // PADDING HORIZONTAL
  EdgeInsets get paddingHorizontalLow =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingHorizontalMedium =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHorizontalHigh =>
      EdgeInsets.symmetric(horizontal: highValue);

  // PADDING VERTICAL
  EdgeInsets get paddingVerticalLow => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingVerticalMedium =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingVerticalHigh =>
      EdgeInsets.symmetric(vertical: highValue);
}
