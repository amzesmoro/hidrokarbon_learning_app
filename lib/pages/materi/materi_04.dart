import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class Materi04 extends StatelessWidget {
  const Materi04({Key? key}) : super(key: key);

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
                  'assets/add_images/13.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/27.PNG',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'a. Tata nama alkena',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama alkena diturunkan dari nama alkana, yaitu sesuai dengan nama alkana di mana akhiran “ana” diganti dengan akhiran “ena”. Hal-hal yang perlu diperhatikan dalam penamaan senyawa alkena adalah sebagai berikut.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Rantai utama diambil dari rantai terpanjang yang mengandung ikatan rangkap.\n' +
                      '2. Penomoran atom karbon dimulai dari ujung yang paling dekat dengan ikatan rangkap.\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/materi_images/8.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3. Alkena yang rantainya tidak bercabang, letak ikatan rangkapnya diberi nomor dan disebut sebelum nama alkena.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/9.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama: 2-butena',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '4. Untuk alkena yang mempunyai cabang gugus alkil, nama alkena (rantai utama) disebut terakhir setelah nomor cabang, nama cabang, dan nomor ikatan rangkap. Urutan penamaan alkena: nomor cabang – nama cabang – nomor ikatan rangkap – nama rantai utama.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/10.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Nama: 2,3-dimetil-2-pentena',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'b. Isomeri alkena',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pada alkena dapat terjadi beberapa peristiwa isomeri, yaitu isomeri yang berkaitan dengan struktur rantai atom karbonnya (isomeri rantai dan isomeri posisi) dan isomeri yang berkaitan dengan kedudukan atom atau gugus di dalam ruangan (isomeri geometri).\n',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Image.asset(
                  'assets/add_images/14.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'c. Sifat fisis alkena',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Untuk jumlah atom karbon yang sama, alkena mempunyai titik didih dan titik lebur lebih tinggi daripada alkana.\n' +
                      '2. Pada suhu kamar, etena, propena, dan butena berwujud gas sedangkan alkena yang lain berwujud cair.\n' +
                      '3. Alkena tidak larut dalam air.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'd. Sifat kimia alkena',
                  style: boldBlueTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alkena merupakan senyawa hidrokarbon yang lebih reaktif daripada alkana. Kereaktifan alkena disebabkan adanya ikatan rangkap. Salah satu ikatan pada ikatan rangkap di alkena lebih mudah putus bila berinteraksi dengan zat lain (mengalami reaksi). Terputusnya ikatan rangkap menjadi ikatan tunggal mengakibatkan terbentuknya senyawa jenuh (alkana). Reaksi ini disebut dengan reaksi penjenuhan atau reaksi adisi.\n\n' +
                      '1. Adisi hidrogen pada alkena menghasilkan alkana dengan bantuan katalis Pt/Ni untuk mempercepat berlangsungnya reaksi.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/13.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\n2. Adisi gas HX (X = Cl, Br, atau I)\n' +
                      'Adisi gas HX pada alkena berlaku aturan Markovnikov.\n' +
                      '\n* Jika atom karbon yang berikatan rangkap mengikat jumlah atom hidrogen yang berbeda, atom X akan terikat pada atom karbon yang sedikit mengikat hidrogen.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/14.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\n* Jika jumlah atom karbon pada ikatan rangkapnya mengikat jumlah atom hidrogen sama banyak, atom X akan terikat pada atom C yang mempunyai rantai karbon paling panjang.',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/15.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\n3. Adisi gas X2 (X = Cl, Br, atau I)\n' +
                      'Untuk menunjukkan adanya ikatan rangkap pada alkena, digunakan larutan Br2 (air brom). Warna coklat dari Br2 akan hilang karena terjadi reaksi seperti berikut yang menghasilkan 1,2-dibromoetana (tidak berwarna).',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/materi_images/16.png',
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
