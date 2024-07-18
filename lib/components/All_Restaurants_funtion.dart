import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:tamang_food_service/All_model/model.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/onbording/Single_restaurant.dart';

class All_Restaurants_funtion extends StatelessWidget {
  Restaurants_model? restaurants_model;
  All_Restaurants_funtion({super.key, required this.restaurants_model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Appservices.pushto(context, Single_restaurant());
          },
          child: Image.asset(
            restaurants_model!.image,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        )
      ],
    );
  }
}
