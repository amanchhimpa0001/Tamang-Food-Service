import 'package:flutter/material.dart';
import 'package:tamang_food_service/All_model/model.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';
import 'package:tamang_food_service/components/textbtn.dart';

class Featured_Partners extends StatelessWidget {
  featured_partners_model fururepatnersdata;
  Featured_Partners({super.key, required this.fururepatnersdata});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(fururepatnersdata.image),
        Appservices.addheight(8),
        Text(
          fururepatnersdata.foodname,
          style: GetTextTheme.fs20_regular,
        ),
        Appservices.addheight(8),
        Text(
          fururepatnersdata.location,
          style: GetTextTheme.fs14_regular,
        ),
        Row(
          children: [
            TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    tapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.orangecolor)),
                onPressed: () {},
                child: Text(fururepatnersdata.rating,
                    style: GetTextTheme.fs12_regular
                        .copyWith(color: AppColors.whiteColor))),
            Appservices.addWidth(7),
            Text(
              fururepatnersdata.mints,
              style: GetTextTheme.fs14_regular,
            ),
            Appservices.addWidth(7),
            Text(
              fururepatnersdata.delivery,
              style: GetTextTheme.fs14_regular,
            )
          ],
        )
      ],
    );
  }
}
