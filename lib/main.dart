import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamang_food_service/All_model/all_model.dart';
import 'package:tamang_food_service/All_model/model.dart';
import 'package:tamang_food_service/components/homepagefuction.dart';
import 'package:tamang_food_service/controller/homesilder.dart';
import 'package:tamang_food_service/onbording/homepage.dart';
import 'package:tamang_food_service/onbording/silder_scrren.dart';
import 'package:tamang_food_service/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: Welcome_screen());
    });
  }
}
