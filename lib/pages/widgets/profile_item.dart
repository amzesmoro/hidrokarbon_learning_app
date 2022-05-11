import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/widgets/card_contact_item.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class ProfileItem extends StatelessWidget {
  final isStudent;

  ProfileItem({this.isStudent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          CardContactItem(
            isStudent: isStudent,
          ),
        ],
      ),
    );
  }
}
