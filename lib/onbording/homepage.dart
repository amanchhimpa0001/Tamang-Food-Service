import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/All_model/all_model.dart';
import 'package:tamang_food_service/All_model/model.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/All_Restaurants_funtion.dart';
import 'package:tamang_food_service/components/Featured_Partners_fuction.dart';
import 'package:tamang_food_service/components/textfilled.dart';
import 'package:tamang_food_service/controller/homesilder.dart';
import 'package:tamang_food_service/onbording/all_Featured_Partners.dart';

class Home_page_screen extends StatefulWidget {
  Home_page_screen({
    super.key,
  });

  @override
  State<Home_page_screen> createState() => _Home_page_screenState();
}

class _Home_page_screenState extends State<Home_page_screen> {
  int currentIndex = 0;
  // var homepage = allmodeldata().homepagedata;
  CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<home_page_silder_fuction> silder_fuction = [
      home_page_silder_fuction(image: "assets/Bitmapimg.png"),
      home_page_silder_fuction(image: "assets/Bitmapimg.png"),
      home_page_silder_fuction(image: "assets/Bitmapimg.png"),
      home_page_silder_fuction(image: "assets/Bitmapimg.png"),
      home_page_silder_fuction(image: "assets/Bitmapimg.png"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tranceparent,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Delivery to".toUpperCase(),
              style: GetTextTheme.fs12_regular
                  .copyWith(color: AppColors.orangecolor),
            ),
            Text(" HayStreet, Perth",
                style: GetTextTheme.fs20_regular
                    .copyWith(color: AppColors.blackColor)),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Filter",
                style: GetTextTheme.fs16_regular
                    .copyWith(color: AppColors.blackColor),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                height: 2,
                color: AppColors.blackColor,
              ),
              Appservices.addheight(10),
              Stack(
                children: [
                  CarouselSlider(
                      carouselController: _carouselController,
                      items: silder_fuction,
                      options: CarouselOptions(
                          onPageChanged: (index, _) {
                            print("INDEX :: $index");
                            setState(() => currentIndex = index);
                            print("Currenmt INDEX :: $currentIndex");
                          },
                          viewportFraction: 1,
                          initialPage: 3,
                          autoPlay: true,
                          enlargeCenterPage: false)),
                  Positioned(
                    top: 150,
                    right: 20,
                    child: Row(
                      children: List.generate(
                          silder_fuction.length,
                          (index) => Padding(
                                padding: EdgeInsets.all(2.sp),
                                child: Container(
                                  height: 5.h,
                                  width: currentIndex == index ? 10.h : 7.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(40.sp),
                                      shape: BoxShape.rectangle,
                                      color: index == currentIndex
                                          ? AppColors.whiteColor
                                          : AppColors.grey),
                                ),
                              )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured\nPartners",
                    style: GetTextTheme.fs22_bold,
                  ),
                  TextButton(
                      onPressed: () {
                        Appservices.pushto(
                          context,
                          All_Featured_Partners(),
                        );
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(color: AppColors.orangecolor),
                      ))
                ],
              ),
              Appservices.addheight(10.h),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      Appservices.addWidth(14),
                  shrinkWrap: true,
                  itemCount: allmodeldata().Fururepatners.length,
                  itemBuilder: (context, index) => Featured_Partners(
                      fururepatnersdata: allmodeldata().Fururepatners[index]),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    image: DecorationImage(
                      image: AssetImage("assets/Banner.png"),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Free Delivery for\n1 Month!",
                        style: GetTextTheme.fs24_bold,
                      ),
                      Appservices.addheight(10),
                      Text(
                          "You’ve to order at least 10 for\nusing free delivery for 1 month.",
                          style: GetTextTheme.fs16_regular),
                    ],
                  ),
                ),
              ),
              Appservices.addheight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Picks\nRestaurants by\nteam",
                    style: GetTextTheme.fs22_bold,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: AppColors.orangecolor),
                      ))
                ],
              ),
              Appservices.addheight(10.h),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      Appservices.addWidth(14),
                  shrinkWrap: true,
                  itemCount: allmodeldata().Fururepatnersbestpicks.length,
                  itemBuilder: (context, index) => Featured_Partners(
                      fururepatnersdata:
                          allmodeldata().Fururepatnersbestpicks[index]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Restaurants",
                    style: GetTextTheme.fs22_bold,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: AppColors.orangecolor),
                      ))
                ],
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: allmodeldata().Restaurants.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          CarouselSlider(
                              carouselController: _carouselController,
                              items: allmodeldata()
                                  .Restaurants
                                  .map((e) => All_Restaurants_funtion(
                                      restaurants_model: e))
                                  .toList(),
                              options: CarouselOptions(
                                  onPageChanged: (index, _) {
                                    setState(() {
                                      index = index;
                                    });
                                  },
                                  viewportFraction: 1,
                                  initialPage: 3,
                                  autoPlay: true,
                                  enlargeCenterPage: false)),
                          Positioned(
                            top: 150,
                            right: 20,
                            child: Row(
                              children: List.generate(
                                  silder_fuction.length,
                                  (index) => Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: Container(
                                          height: 5.h,
                                          width: currentIndex == index
                                              ? 10.h
                                              : 7.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40.sp),
                                              shape: BoxShape.rectangle,
                                              color: index == currentIndex
                                                  ? AppColors.whiteColor
                                                  : AppColors.grey),
                                        ),
                                      )),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        allmodeldata().Restaurants[index].foodname,
                        style: GetTextTheme.fs20_regular,
                      ),
                      Text(
                        allmodeldata().Restaurants[index].foodtype,
                        style: GetTextTheme.fs16_regular
                            .copyWith(color: Colors.black54),
                      ),
                      Row(
                        children: [
                          Text(allmodeldata().Restaurants[index].rating),
                          Appservices.addWidth(14),
                          (Icon(
                            Icons.star,
                            color: AppColors.orangecolor,
                          )),
                          Appservices.addWidth(8),
                          Text(
                            "200+ Ratings",
                            style: GetTextTheme.fs16_regular,
                          ),
                          Appservices.addWidth(14),
                          (Icon(
                            Icons.watch_later,
                          )),
                          Appservices.addWidth(8),
                          Text(
                            allmodeldata().Restaurants[index].mints,
                            style: GetTextTheme.fs16_regular,
                          ),
                          Appservices.addWidth(8),
                          Text(
                            "\$ Free",
                            style: GetTextTheme.fs16_regular,
                          )
                        ],
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
