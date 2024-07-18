import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/customtextfilled.dart';
import 'package:tamang_food_service/auth_screen/resetemail.dart';
import 'package:tamang_food_service/controller/text_validatioin.dart';

class Forget_password extends StatefulWidget {
  const Forget_password({super.key});

  @override
  State<Forget_password> createState() => _Forget_passwordState();
}

class _Forget_passwordState extends State<Forget_password> {
  var _passwordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailCtrl = TextEditingController();
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
                child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Appservices.addheight(15),
                    Text(
                      "Forgot password",
                      style: GetTextTheme.fs32_regular,
                    ),
                    Appservices.addheight(15),
                    Text(
                      "Enter your email address and we will\nsend you a reset instructions.:)",
                      style: GetTextTheme.fs16_regular,
                    ),
                    Appservices.addheight(20.h),
                    Customtextformfilled(
                      controller: _emailCtrl,
                      obscure: false,
                      validator: (value) =>
                          TextValidatioinController.isEmail(value),
                      onPressed: () => setState(
                        () {
                          _passwordVisible = !_passwordVisible;
                        },
                      ),
                      text: "Email address",
                      hintText: "user@email.com",
                    ),
                    Appservices.addheight(20.h),
                    CustomElevatedButton(
                      foreground_clr: AppColors.whiteColor,
                      btnName: "Reset password",
                      onTap: () {
                        Appservices.pushto(context, Reset_email());
                      },
                      color: AppColors.orangecolor,
                    )
                  ]),
            ))));
  }
}
