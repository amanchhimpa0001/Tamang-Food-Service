import 'package:flutter/material.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/onbording/silder_scrren.dart';

class Welcome_screen extends StatelessWidget {
  const Welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Appservices.getScreenHeight(context),
      width: Appservices.getScreenWidth(context),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Circleimg.png"),
              alignment: Alignment.topLeft)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Appservices.addheight(70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logoimg.png"),
                Appservices.addWidth(17),
                Text(
                  "Tamang\nFoodService",
                  style: GetTextTheme.fs35_bold,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Appservices.addheight(20),
            Center(
                child: Image.asset(
              "assets/kulfiimg.png",
              scale: 1,
            )),
            Appservices.addheight(40),
            Text(
              "Welcome",
              style: GetTextTheme.fs26_bold,
            ),
            Appservices.addheight(30),
            Text(
              "It’s a pleasure to meet you. We are\nexcited that you’re here so let’s get\nstarted!",
              style: GetTextTheme.fs14_regular,
              textAlign: TextAlign.center,
            ),
            Appservices.addheight(30),
            CustomElevatedButton(
              foreground_clr: AppColors.whiteColor,
              btnName: "Get Started",
              onTap: () {
                Appservices.pushto(context, Slider_screen());
              },
              color: AppColors.orangecolor,
            )
          ],
        ),
      ),
    ));
  }
}
