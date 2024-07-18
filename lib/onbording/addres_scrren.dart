import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:tamang_food_service/All_model/all_model.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/bottomnavbar.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/textfilled.dart';
import 'package:tamang_food_service/onbording/add_location.dart';
import 'package:tamang_food_service/onbording/homepage.dart';

class addres_Screen extends StatelessWidget {
  const addres_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
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
                "Find restaurants near you",
                style: GetTextTheme.fs24_regular,
              ),
            ),
            Appservices.addheight(15),
            Center(
              child: Text(
                "Please enter your location or allow access to\nyour location to find restaurants near you.",
                style: GetTextTheme.fs14_regular,
                textAlign: TextAlign.center,
              ),
            ),
            Appservices.addheight(15),
            InkWell(
              onTap: () {
                Appservices.pushto(context, add_location());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.orangecolor),
                    color: AppColors.whiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Appservices.pushto(context, Bottomnavbar());
                        },
                        icon: Icon(
                          Icons.telegram,
                          color: AppColors.orangecolor,
                        )),
                    Text(
                      "Use current location",
                      style: GetTextTheme.fs16_regular
                          .copyWith(color: AppColors.orangecolor),
                    )
                  ],
                ),
              ),
            ),
            Appservices.addheight(15),
            textfilled(
              txt: "Enter a new address",
              icon: Icons.location_on_sharp,
            ),
          ],
        ),
      ),
    );
  }
}
