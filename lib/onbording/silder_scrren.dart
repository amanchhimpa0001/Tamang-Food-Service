import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/auth_screen/sign_in_.dart';
import 'package:tamang_food_service/controller/silder_fuction.dart';

import '../Helpers/appservice.dart';
import '../components/custom_elevated_btn.dart';

class Slider_screen extends StatefulWidget {
  Slider_screen({
    super.key,
  });

  @override
  State<Slider_screen> createState() => _Slider_screenState();
}

class _Slider_screenState extends State<Slider_screen> {
  int currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<SliderWidget> Widgets = [
      SliderWidget(
        "assets/logoimg.png",
        "Tamang\nFoodService",
        "Get Started",
        "assets/foodimg.png",
        "All your favorites",
        "Order from the best local restaurants\nwith easy, on-demand delivery.",
      ),
      SliderWidget(
        "assets/logoimg.png",
        "Tamang\nFoodService",
        "Get Started",
        "assets/bikeimg.png",
        "Free delivery offers",
        "Free delivery for new customers via Apple Pay\nand others payment methods.",
      ),
      SliderWidget(
        "assets/logoimg.png",
        "Tamang\nFoodService",
        "Get Started",
        "assets/cakeimg.png",
        "Choose your food",
        "Easily find your type of food craving and you’ll\nget delivery in wide range.",
      )
    ];

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Appservices.addheight(20),
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
                Appservices.addheight(10),
                CarouselSlider(
                    carouselController: _carouselController,
                    items: Widgets,
                    options: CarouselOptions(
                        onPageChanged: (index, _) {
                          print("INDEX :: $index");
                          setState(() => currentIndex = index);
                          print("Currenmt INDEX :: $currentIndex");
                        },
                        viewportFraction: 1,
                        aspectRatio: 0.70,
                        initialPage: 3,
                        // autoPlay: true,
                        enlargeCenterPage: false)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      Widgets.length,
                      (index) => Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Container(
                              height: 10.h,
                              width: currentIndex == index ? 25.h : 10.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  shape: BoxShape.rectangle,
                                  color: index == currentIndex
                                      ? AppColors.darkred
                                      : AppColors.whiteColor),
                            ),
                          )),
                ),
                Appservices.addheight(20),
                CustomElevatedButton(
                  foreground_clr: AppColors.whiteColor,
                  btnName: "Get Started",
                  onTap: () {
                    currentIndex == Widgets.length - 1
                        ? Appservices.pushto(context, sign_screen())
                        : _carouselController.nextPage();
                  },
                  color: AppColors.orangecolor,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}


// SliderWidget(
//           "assets/logoimg.png",
//           "Tamang\nFoodService",
//           "Get Started",
//           "assets/kulfiimg.png",
//           "Welcome",
//           "It’s a pleasure to meet you. We are\nexcited that you’re here so let’s get\nstarted!",
//           () {
//         _carouselController.nextPage();
//       }),