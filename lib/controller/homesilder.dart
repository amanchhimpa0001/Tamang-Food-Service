import 'package:flutter/material.dart';

class home_page_silder_fuction extends StatelessWidget {
  String image;

  home_page_silder_fuction({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(image)],
    );
  }
}
