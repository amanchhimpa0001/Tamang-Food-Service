import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/customtextfilled.dart';
import 'package:tamang_food_service/auth_screen/Create_Account.dart';

class Reset_email extends StatelessWidget {
  const Reset_email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Appservices.goback(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.blackColor,
              )),
          title: Text(
            "Forgot Password",
            style: TextStyle(color: AppColors.blackColor),
          ),
          backgroundColor: AppColors.tranceparent,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Appservices.addheight(15),
                  Text(
                    "Forgot password",
                    style: GetTextTheme.fs32_regular,
                  ),
                  Appservices.addheight(15),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text:
                            "We have sent a instructions email to\nsajin tamang@figma.com.",
                        style: GetTextTheme.fs14_regular),
                    TextSpan(
                        text: " Having problem?",
                        style: GetTextTheme.fs14_regular
                            .copyWith(color: AppColors.orangecolor)),
                  ])),
                  Appservices.addheight(20.h),
                  CustomElevatedButton(
                    foreground_clr: AppColors.whiteColor,
                    btnName: "Send again",
                    onTap: () {
                      Appservices.pushto(context, Create_Account());
                    },
                    color: AppColors.orangecolor,
                  ),
                  Appservices.addheight(70.h),
                  Image.asset("assets/coffiimg.png")
                ]))));
  }
}
