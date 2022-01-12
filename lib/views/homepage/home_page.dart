import 'package:flutter/material.dart';
import 'package:todo_app/views/homepage/component/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: Body(),
    );
  }
}
