import 'package:flutter/material.dart';
import '../homeview/home_view.dart';

void goHomePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
}
