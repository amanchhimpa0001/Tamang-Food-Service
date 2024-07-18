import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/auth_screen/Create_Account.dart';
import 'package:tamang_food_service/auth_screen/Verifynumber.dart';

class Login_foodly_screen extends StatelessWidget {
  const Login_foodly_screen({super.key});

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
        title: Center(
          child: Text(
            "Login to Tamang Food\nService",
            style: TextStyle(color: AppColors.blackColor),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: AppColors.tranceparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appservices.addheight(15),
            Center(
              child: Text(
                "Get started with Foodly",
                style: GetTextTheme.fs28_regular,
              ),
            ),
            Appservices.addheight(15),
            Center(
              child: Text(
                "Enter your phone number to use foodly and\nenjoy your food :))",
                style: GetTextTheme.fs16_regular,
                textAlign: TextAlign.center,
              ),
            ),
            Appservices.addheight(16),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
              initialCountryCode: 'IN',
            ),
            Appservices.addheight(20.h),
            CustomElevatedButton(
              foreground_clr: AppColors.whiteColor,
              btnName: "Sign up",
              onTap: () {
                Appservices.pushto(context, Verify_phone_number());
              },
              color: AppColors.orangecolor,
            ),
          ],
        ),
      ),
    );
  }
}
