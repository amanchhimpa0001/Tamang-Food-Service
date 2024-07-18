import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/customtextfilled.dart';
import 'package:tamang_food_service/components/textbtn.dart';
import 'package:tamang_food_service/auth_screen/forgetpassword.dart';
import 'package:tamang_food_service/auth_screen/login_foodly.dart';
import 'package:tamang_food_service/controller/text_validatioin.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  var isChecked = true;
  var _passwordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();

  TextEditingController _emailCtrl = TextEditingController();

  bool isChecked2 = false;
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
          "Sign In",
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
              Text(
                "Welcome to Tamang\nFood Services",
                style: GetTextTheme.fs32_regular,
              ),

              Appservices.addheight(15),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Enter your Name, Email and Password\nfor sign up.",
                    style: GetTextTheme.fs14_regular),
                TextSpan(
                    text: " Already have account?",
                    style: GetTextTheme.fs14_regular
                        .copyWith(color: AppColors.orangecolor)),
              ])),
              Appservices.addheight(20.h),
              Customtextformfilled(
                controller: _emailCtrl,
                obscure: false,
                text: "Full Name",
              ),
              Appservices.addheight(20.h),
              Customtextformfilled(
                controller: _emailCtrl,
                obscure: false,
                text: "Email address",
                hintText: "user@email.com",
              ),
              Appservices.addheight(20.h),
              Customtextformfilled(
                controller: _passwordCtrl,
                obscure: true,
                text: "Password",
                validator: (value) =>
                    TextValidatioinController.isPassword(value),
                onPressed: () =>
                    setState(() => _passwordVisible = !_passwordVisible),
                icon:
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
              ),
              Appservices.addheight(20.h),
              CustomElevatedButton(
                foreground_clr: AppColors.whiteColor,
                btnName: "SIGN up",
                onTap: () {
                  Appservices.pushto(context, Login_foodly_screen());
                },
                color: AppColors.orangecolor,
              ),
              Appservices.addheight(20.h),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms\nConditions & Privacy Policy.",
                  style: GetTextTheme.fs16_regular,
                ),
              ),
              Appservices.addheight(20.h),
              Center(
                child: Text(
                  "Or",
                  style: GetTextTheme.fs16_regular,
                ),
              ),
              Appservices.addheight(30.h),
              //
              Textbutton(
                backgroundColor: AppColors.primaryColor,
                ontap: () {},
                image: "assets/fb.png",
                text: "Connect with Facebook ",
              ),
              Appservices.addheight(14.h),
              Textbutton(
                backgroundColor: AppColors.darkbluecolor,
                ontap: () {},
                image: "assets/googleimg.png",
                text: "Connect with Facebook ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
