import 'package:flutter/material.dart';

import 'package:tamang_food_service/Helpers/color_sheet.dart';

// ignore: must_be_immutable
class textfilled extends StatelessWidget {
  String txt;
  Color? textclr;
  IconData? icon;
  IconData? suffixicon;
  textfilled(
      {super.key, required this.txt, this.icon, this.textclr, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          suffixIcon: Icon(suffixicon),
          labelText: txt,
          labelStyle: TextStyle(color: textclr),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
