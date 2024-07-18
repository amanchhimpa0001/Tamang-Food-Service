import 'package:flutter/material.dart';

class listtile extends StatelessWidget {
  String title, subtitle;
  listtile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.send),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ],
    );
  }
}
