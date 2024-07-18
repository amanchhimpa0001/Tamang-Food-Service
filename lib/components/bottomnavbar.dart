import 'package:flutter/material.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';

import 'package:tamang_food_service/onbording/Single_restaurant.dart';
import 'package:tamang_food_service/onbording/homepage.dart';

import '../onbording/all_Featured_Partners.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  List<Widget> screen = [
    Home_page_screen(),
    All_Featured_Partners(),
    Single_restaurant(),
    Single_restaurant(),
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.orangecolor,
        unselectedItemColor: AppColors.blackColor,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.devices_other_outlined), label: "Others"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        elevation: 2,
      ),
    );
  }
}
