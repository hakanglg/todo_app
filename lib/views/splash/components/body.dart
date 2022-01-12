import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/components/my_svg_picture.dart';
import 'package:todo_app/constants/color_constants.dart';
import 'package:todo_app/constants/image_constants.dart';
import 'package:todo_app/constants/string_constants.dart';
import 'package:todo_app/core/extension/context_extension.dart';
import 'package:todo_app/components/my_elevated_button.dart';
import 'package:todo_app/views/homeview/home_view.dart';
import 'package:todo_app/views/splash/splash_module.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(color: electricViolet),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: electricViolet),
              ),
            ),
            Expanded(
              flex: 2,
              child: MySplashBody(),
            )
          ],
        ),
      ),
    );
  }
}

class MySplashBody extends StatelessWidget {
  const MySplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: mySvgPicture(
                height: context.mediumValue,
                color: electricViolet,
                logo: logo2,
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: context.mediumValue),
                  child: buildSplashTitle(context),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: context.paddingHorizontalMedium,
                  child: buildSplashText(context),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, context.mediumValue),
              child: MyElevatedButton(
                onPressed: () => goHomePage(context),
                color: electricViolet,
                text: splashButtonText,
              ),
            )
          ],
        ),
      ),
    );
  }

  Text buildSplashTitle(BuildContext context) {
    return Text(
      splashTitle,
      style: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(fontWeight: FontWeight.bold, color: black),
    );
  }

  Text buildSplashText(BuildContext context) {
    return Text(splashText,
        textAlign: TextAlign.center,
        style:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: waterloo));
  }
}
