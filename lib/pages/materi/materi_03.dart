import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi03 extends StatelessWidget {
  const Materi03({Key? key}) : super(key: key);

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
                  'assets/add_images/10.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/table_images/1.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'a. Tata nama alkana',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Nama alkana diambil berdasarkan jumlah atom karbon yang menyusunnya dan diakhiri dengan akhiran “ana”.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/table_images/2.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2. Jika strukturnya telah diketahui dan merupakan rantai karbon tak bercabang, di depan nama tersebut diberi huruf n (dari kata normal).\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/materi_images/2.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3. Jika rantai karbonnya bercabang, ditentukan dahulu rantai utama, yaitu rantai atom karbon terpanjang, dan diberi nomor urut dari ujung yang paling dekat dengan letak cabang.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/3.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '4. Menetapkan gugus cabang (umumnya adalah gugus alkil) yang terikat pada rantai utama. Alkil adalah alkana yang kehilangan sebuah atom hidrogen. Rumus umum alkil adalah CnH2n+1. Nama gugus alkil disesuaikan dengan nama alkananya dengan mengganti akhiran -ana menjadi -il.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/table_images/3.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '5. Gugus alkil yang mempunyai rantai bercabang atau tidak terikat pada atom karbon primer diberi nama tertentu.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '6. Urutan penamaan alkana: nomor cabang – nama cabang – nama rantai utama.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/materi_images/4.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama: 2-metilpentana',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '7. Jika terdapat lebih dari satu cabang yang sama, nama cabang disebut sekali, tetapi diawali dengan angka latin yang menunjukkan jumlahnya.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/materi_images/5.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama: 3-etil-2,2,5-trimetilheksana',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'b. Isomeri alkana',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Isomeri adalah peristiwa di mana suatu senyawa karbon mempunyai rumus molekul sama tetapi mempunyai struktur berbeda. Semakin banyak jumlah atom karbon penyusun alkana, semakin banyak jumlah isomernya.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/table_images/4.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tabel berikut menunjukkan isomer dari senyawa heksana.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/26.PNG',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'c. Sifat fisis alkana',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Semakin banyak atom karbon atau semakin panjang rantai karbon suatu alkana, semakin tinggi titik didih dan titik leburnya.\n' +
                      '2. Semakin banyak cabang pada rantai karbonnya, semakin rendah titik didih dan titik leburnya.\n' +
                      '3. Untuk jumlah atom karbon yang sama, isomer dengan rantai karbon tidak bercabang mempunyai titik didih dan titik lebur yang lebih tinggi daripada isomer dengan rantai karbon bercabang.\n' +
                      '4. Pada suhu kamar, alkana dengan jumlah atom C1 – C4 berwujud gas, alkana dengan jumlah atom C5 – C17 berwujud cair, dan alkana dengan jumlah atom C > 17 berwujud padatan.\n' +
                      '5. Alkana tidak larut dalam air karena merupakan senyawa kovalen non-polar.\n' +
                      '6. Alkana mempunyai massa jenis yang lebih rendah dari air. Semakin banyak atom karbon penyusun alkana semakin besar massa jenisnya.\n' +
                      '7. Cairan alkana tidak menghantarkan arus litrik.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/add_images/11.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'e. Sifat kimia alkana',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Reaksi pada alkana umumnya merupakan reaksi substitusi, yaitu reaksi penggantian gugus atom hidrogen pada suatu alkana. Berikut beberapa contoh reaksi pada alkana.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Dengan gas klor dapat bereaksi jika ada sinar matahari atau bantuan cahaya.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/6.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2. Pada pembakaran sempurna alkana, akan dihasilkan gas CO2 dan H2O.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/7.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/add_images/12.png',
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
