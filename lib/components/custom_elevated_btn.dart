import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';

// ignore: must_be_immutable

class CustomElevatedButton extends StatelessWidget {
  String btnName;
  Function onTap;
  Color? color;
  Color? icon_clr;
  Color foreground_clr;
  Color? Borderclour;
  IconData? icon;
  double padding;

  CustomElevatedButton(
      {required this.btnName,
      required this.onTap,
      this.color,
      this.foreground_clr = AppColors.blackColor,
      this.Borderclour,
      this.icon,
      this.icon_clr,
      this.padding = 10,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: padding)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  shadowColor: MaterialStateProperty.all(Borderclour),
                  backgroundColor: MaterialStateProperty.all(
                      color ?? AppColors.primaryColor),
                  foregroundColor: MaterialStateProperty.all(foreground_clr)),
              onPressed: () => onTap(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(
                    btnName,
                    style: GetTextTheme.fs14_bold,
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        )
      ],
    );
  }
}
