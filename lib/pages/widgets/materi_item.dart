import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';
import 'package:hidrokarbon_learning_app/pages/detail_materi_page.dart';

class MateriItem extends StatelessWidget {

  final materiNumber;
  final materiName;

  MateriItem({this.materiNumber, this.materiName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailMateriPage(
                materiName: materiName,
                materiNumber: materiNumber,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          onPrimary: whiteColor,
          primary: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: Row(
            children: [
              Text(
                materiNumber,
                style: semiBoldBlueTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                materiName,
                style: semiBoldBlueTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
