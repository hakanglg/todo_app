import 'package:flutter/material.dart';
import 'package:todo_app/views/homeview/home_view.dart';

void goHomePage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
}
