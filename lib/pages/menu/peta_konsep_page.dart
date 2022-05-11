import 'package:flutter/material.dart';

class PetaKonsepPage extends StatelessWidget {
  const PetaKonsepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/add_images/1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
