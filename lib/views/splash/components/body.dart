import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/constants/color_constants.dart';
import 'package:todo_app/constants/image_constants.dart';
import 'package:todo_app/constants/string_constants.dart';
import 'package:todo_app/core/extension/context_extension.dart';

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
              child: SvgPicture.asset(
                logo2,
                height: context.mediumValue,
                color: electricViolet,
                //width: context.dynamicWitdh(0.04)
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: context.mediumValue),
                  child: Text(
                    splashTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold, color: black),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: context.paddingHorizontalMedium,
                  child: Text(splashText,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: waterloo)),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, context.mediumValue),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  splashButtonText,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: wildSand),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        context.dynamicWitdh(0.8), context.dynamicHeight(0.09)),
                    primary: electricViolet,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
