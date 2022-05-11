import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class ContactItem extends StatelessWidget {
  final icon;
  final name;
  ContactItem({this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: mediumBlackTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
