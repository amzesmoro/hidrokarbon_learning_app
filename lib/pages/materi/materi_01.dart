// import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi01 extends StatelessWidget {
  const Materi01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/add_images/2.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '1. Identifikasi Senyawa Karbon',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Image.asset(
                  'assets/add_images/3.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '2. Sumber Senyawa Karbon',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'a. Tumbuhan dan hewan',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/4.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'b. Batubara',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/5.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'c. Gas alam dan minyak bumi',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/6.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
