import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class IndikatorPage extends StatelessWidget {
  const IndikatorPage({Key? key}) : super(key: key);

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
                '3.1.1 Menjelaskan kekhasan atom karbon.\n\n' +
                    '3.1.2 Menganalisis penggolongan hidrokarbon rantai terbuka..\n\n' +
                    '3.1.3 Menerapkan tata nama hidrokarbon rantai terbuka.\n\n' +
                    '3.1.4 Memahami sifat-sifat hidrokarbon.\n\n' +
                    '4.1.1 Menyusun struktur hidrokarbon.\n\n' +
                    '4.1.2 Mengidentifikasi rumus umum hidrokarbon berdasarkan strukturnya.\n\n' +
                    '4.1.3 Menjelaskan sifat kejenuhan alkana berdasarkan jenis ikatannya.\n\n' +
                    '4.1.4 Menjelaskan aturan IUPAC dalam penamaan senyawa hidrokarbon.\n\n' +
                    '4.1.5 Menjelaskan isomerisme pada senyawa hidrokarbon.',
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
