import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi02 extends StatelessWidget {
  const Materi02({Key? key}) : super(key: key);

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
                  '1. Konfigurasi elektron atom karbon',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Atom karbon mempunyai nomor atom 6, dengan 4 elektron valensi. Keempat elektron valensi itu dapat membentuk pasangan elektron bersama dengan atom lain membentuk ikatan kovalen.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '2. Cara atom karbon berikatan',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Atom karbon dengan keempat tangan ikatan dapat membentuk rantai karbon dengan berbagai bentuk dan kemungkinan. Setiap kemungkinan menghasilkan satu jenis senyawa. Beberapa kemungkinan rantai karbon yang dibentuk dapat dikelompokkan berdasarkan:',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'a. Jumlah ikatan',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/7.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'b. Bentuk rantai',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/8.png',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3. Posisi atom karbon di dalam rantai karbon',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/add_images/9.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
