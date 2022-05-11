import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi05 extends StatelessWidget {
  const Materi05({Key? key}) : super(key: key);

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
                  'assets/add_images/15.png',
                ),
                Image.asset(
                  'assets/table_images/5.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'a. Tata nama alkuna',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alkuna diberi nama seperti pada alkena, dengan akhiran “ena” diganti dengan “una”. Tata cara pemberian nomor ikatan dan cabang sama dengan alkena.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/materi_images/17.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama: 4-metil-2-pentuna',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'b. Isomeri alkuna',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pada alkuna, tidak terdapat isomeri geometri seperti alkena, tetapi hanya terjadi isomeri rantai dan isomeri posisi. Alkuna berisomeri dengan senyawa alkadiena (alkena dengan dua ikatan rangkap).',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'c. Sifat fisis alkuna',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Untuk jumlah atom karbon yang sama, alkuna mempunyai titik didih dan titik lebur yang lebih tinggi daripada alkena.' +
                      '2. Pada suhu kamar, etuna berwujud gas sedangkan alkuna yang lain berwujud cair.' +
                      '3. Alkuna tidak larut dalam air.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'd. Sifat kimia alkuna',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alkuna lebih reaktif dibanding alkena dan alkana. Alkuna dapat mengalami reaksi adisi (penjenuhan) dan substitusi (penggantian atom hidrogen dengan gugus lain).',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Adisi hidrogen pada alkuna menghasilkan alkana dengan bantuan katalis Pt/Ni untuk mempercepat berlangsungnya reaksi.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/18.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2. Adisi gas HX (X = Cl, Br, atau I)\n' +
                      'Adisi gas HX terhadap alkuna berlaku aturan Markovnikov.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/19.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3. Adisi gas X2 (X = Cl, Br, atau I) pada alkuna',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/20.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '4. Substitusi atom hidrogen\n' +
                      'Atom hidrogen dapat disubstitusi (diganti) oleh gugus tertentu.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/21.png',
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
