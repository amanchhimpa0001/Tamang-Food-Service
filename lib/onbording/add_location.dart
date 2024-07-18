import 'package:flutter/material.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/custom_elevated_btn.dart';
import 'package:tamang_food_service/components/listtile.dart';
import 'package:tamang_food_service/components/textfilled.dart';

import '../Helpers/color_sheet.dart';

class add_location extends StatelessWidget {
  const add_location({super.key});

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
        child: SingleChildScrollView(
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
              Appservices.addheight(5),
              textfilled(
                suffixicon: Icons.close,
                txt: "Enter a new address",
                icon: Icons.location_on_sharp,
              ),
              Appservices.addheight(5),
              listtile(
                title: "San Francisco , parth ,narzo",
                subtitle: "Western Australia",
              ),
              listtile(
                title: "San Francisco , parth ,narzo",
                subtitle: "Western Australia",
              ),
              listtile(
                title: "San Francisco , parth ,narzo",
                subtitle: "Western Australia",
              ),
              listtile(
                title: "San Francisco , parth ,narzo",
                subtitle: "Western Australia",
              ),
              listtile(
                title: "San Francisco , parth ,narzo",
                subtitle: "Western Australia",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
