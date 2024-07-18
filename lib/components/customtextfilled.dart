import 'package:flutter/material.dart';

import 'package:tamang_food_service/Helpers/color_sheet.dart';
import 'package:tamang_food_service/Helpers/text_theme.dart';

// ignore: must_be_immutable
class Customtextformfilled extends StatefulWidget {
  String? text;
  String? hintText;
  IconData? icon;
  Function? onPressed;
  Function(String?)? validator;
  bool obscure;
  TextEditingController controller;
  Customtextformfilled(
      {super.key,
      this.text,
      this.icon,
      this.onPressed,
      this.validator,
      required this.controller,
      this.hintText,
      required this.obscure});

  @override
  State<Customtextformfilled> createState() => _CustomtextformfilledState();
}

class _CustomtextformfilledState extends State<Customtextformfilled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscure,
      validator:
          widget.validator == null ? null : (value) => widget.validator!(value),
      decoration: InputDecoration(
        labelText: widget.text,
        labelStyle: GetTextTheme.fs14_bold
            .copyWith(color: AppColors.greyColor.shade400),
        hintText: widget.hintText,
        suffixIcon: IconButton(
            color: AppColors.greyscale,
            onPressed:
                widget.onPressed != null ? () => widget.onPressed!() : null,
            icon: Icon(widget.icon)),
      ),
    );
  }
}
