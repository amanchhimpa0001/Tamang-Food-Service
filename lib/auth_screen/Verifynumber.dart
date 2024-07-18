import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pinput/pinput.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/onbording/addres_scrren.dart';

class Verify_phone_number extends StatelessWidget {
  const Verify_phone_number({super.key});

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
            "Login to Foodly",
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
                "Verify phone number",
                style: GetTextTheme.fs28_regular,
              ),
            ),
            Appservices.addheight(15),
            Center(
              child: Text(
                "Enter the 4-Digit code sent to you at +610489632578))",
                style: GetTextTheme.fs16_regular,
                textAlign: TextAlign.center,
              ),
            ),
            Appservices.addheight(15),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 60,
              style: TextStyle(fontSize: 27),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              // fieldStyle: FieldStyle.underline,
            ),
            Appservices.addheight(20.h),
            CustomElevatedButton(
              foreground_clr: AppColors.whiteColor,
              btnName: "CONTINUE",
              onTap: () {
                Appservices.pushto(context, addres_Screen());
              },
              color: AppColors.orangecolor,
            ),
            Appservices.addheight(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive code?",
                  style: GetTextTheme.fs12_regular,
                ),
                Appservices.addWidth(10.h),
                Text("Resend Again.",
                    style: GetTextTheme.fs12_regular
                        .copyWith(color: AppColors.orangecolor)),
              ],
            ),
            Appservices.addheight(15),
            Center(
              child: Text(
                "By Signing up you agree to our Terms\nConditions & Privacy Policy.:)",
                style: GetTextTheme.fs16_regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
