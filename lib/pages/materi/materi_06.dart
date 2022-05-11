import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi06 extends StatelessWidget {
  const Materi06({Key? key}) : super(key: key);

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
                Text(
                  'a. Kegunaan alkana',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/add_images/16.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'b. Kegunaan alkena dan alkuna',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/add_images/17.png',
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
