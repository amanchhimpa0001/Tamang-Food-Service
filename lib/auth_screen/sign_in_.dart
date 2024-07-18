import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/auth_screen/forgetpassword.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/customtextfilled.dart';
import 'package:tamang_food_service/components/textbtn.dart';
import 'package:tamang_food_service/controller/text_validatioin.dart';
import 'package:tamang_food_service/helpers/text_theme.dart';

class sign_screen extends StatefulWidget {
  const sign_screen({super.key});

  @override
  State<sign_screen> createState() => _sign_screenState();
}

class _sign_screenState extends State<sign_screen> {
  var isChecked = true;
  var _passwordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  TextEditingController _passwordCtrl = TextEditingController();

  TextEditingController _emailCtrl = TextEditingController();

  // bool isChecked = false;
  // bool isChecked2 = false;
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Tamang\nFood Services",
                  style: GetTextTheme.fs32_regular,
                ),
                Appservices.addheight(15),
                Text(
                  "Enter your Phone number or Email\naddress for sign in. Enjoy your food :)",
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
                Customtextformfilled(
                  controller: _passwordCtrl,
                  obscure: _passwordVisible,
                  validator: (value) =>
                      TextValidatioinController.isPassword(value),
                  onPressed: () =>
                      setState(() => _passwordVisible = !_passwordVisible),
                  icon: _passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: AppColors.grey),
                      )),
                ),
                CustomElevatedButton(
                  foreground_clr: AppColors.whiteColor,
                  btnName: "SIGN IN",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                    Appservices.pushto(context, Forget_password());
                  },
                  color: AppColors.orangecolor,
                ),
                Appservices.addheight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "datDon’t have account?",
                      style: GetTextTheme.fs12_regular,
                    ),
                    Appservices.addWidth(10.h),
                    Text("Create new account.",
                        style: GetTextTheme.fs12_regular
                            .copyWith(color: AppColors.orangecolor)),
                  ],
                ),
                Appservices.addheight(20.h),
                Center(
                  child: Text(
                    "Or",
                    style: GetTextTheme.fs16_regular,
                  ),
                ),
                Appservices.addheight(30.h),
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
      ),
    );
  }
}
