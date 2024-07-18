import 'package:flutter/material.dart';
import 'package:tamang_food_service/All_model/all_model.dart';
import 'package:tamang_food_service/Helpers/appservice.dart';
import 'package:tamang_food_service/Helpers/color_sheet.dart';

class All_Featured_Partners extends StatelessWidget {
  const All_Featured_Partners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
            onPressed: () {
              Appservices.goback(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.blackColor,
            )),
        title: Text(
          "Featured Partners",
          style: TextStyle(color: AppColors.blackColor),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.68),
              shrinkWrap: true,
              itemCount: allmodeldata().AllFeaturedPartners.length,
              itemBuilder: (context, index) {
                final model = allmodeldata().AllFeaturedPartners[index];
                return Container(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          AspectRatio(
                            aspectRatio: 0.8,
                            child: Image.asset(
                              model.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              // Row(
                              //   children: [Icon(icons)],
                              // )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
