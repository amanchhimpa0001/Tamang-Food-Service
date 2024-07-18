import 'package:flutter/material.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/helpers/text_theme.dart';

// ignore: must_be_immutable
class SliderWidget extends StatefulWidget {
  String logoimage, foodtext, foodimg, title, subtitle, buttonname;

  SliderWidget(
    this.logoimage,
    this.foodtext,
    this.buttonname,
    this.foodimg,
    this.title,
    this.subtitle,
  );

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.asset(
              widget.foodimg,
              scale: 1,
            )),
            Appservices.addheight(10),
            Text(
              widget.title,
              style: GetTextTheme.fs26_bold,
            ),
            Appservices.addheight(30),
            Text(
              widget.subtitle,
              style: GetTextTheme.fs14_regular,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
