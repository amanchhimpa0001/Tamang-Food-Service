import 'package:flutter/material.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';

import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';

// ignore: must_be_immutable
class Textbutton extends StatelessWidget {
  String image;
  String text;
  Color backgroundColor;
  Function? ontap;
  Textbutton(
      {super.key,
      required this.image,
      required this.text,
      required this.backgroundColor,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.all(backgroundColor)),
        onPressed: () {
          ontap!();
        },
        child: Row(
          children: [
            Image.asset(image),
            Appservices.addWidth(
              60,
            ),
            Center(
              child: Text(
                text,
                style: GetTextTheme.fs12_bold.copyWith(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
