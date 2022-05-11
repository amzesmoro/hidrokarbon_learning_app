import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/widgets/profile_item.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class ProfileMenuPage extends StatelessWidget {
  const ProfileMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Developer Profile',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileItem(
                  isStudent: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Supervisor Profile',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileItem(
                  isStudent: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
