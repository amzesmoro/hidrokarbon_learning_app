import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class PetunjukPage extends StatelessWidget {
  const PetunjukPage({Key? key}) : super(key: key);

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
                'Pada tampilan awal terdapat button-button yang dapat diakses oleh pengguna, yaitu:\n\n' +
                    '1. Dengan memilih button hamburger, maka pengguna dapat mengakses Home, Peta Konsep, Kompetensi Dasar, Indikator, Daftar Pustaka, Profil, dan Petunjuk.\n\n' +
                    '2. Dengan memilih button materi, maka pengguna akan diarahkan ke materi hidrokarbon.\n\n' +
                    '3. Dengan memilih button kuis, maka pengguna akan diarahkan ke soal-soal latihan hidrokarbon.\n\n' +
                    '4. Dengan memilih button video, maka pengguna akan diarahkan ke video materi hidrokarbon.\n\n' +
                    '5. Dengan memilih button audio, maka pengguna dapat menghidupkan ataupun mematikan audio.',
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
