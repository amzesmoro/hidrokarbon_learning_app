import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class KompetensiDasarPage extends StatelessWidget {
  const KompetensiDasarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3.1 Menganalisis struktur dan sifat senyawa hidrokarbon berdasarkan pemahaman kekhasan atom karbon dan penggolongan senyawanya.\n\n' +
                    '4.1 Mengolah dan menganalisis struktur dan sifat senyawa hidrokarbon berdasarkan pemahaman kekhasan atom karbon dan penggolongan senyawanya.',
                style: mediumBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
