import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class DaftarPustakaPage extends StatelessWidget {
  const DaftarPustakaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '1. https://youtu.be/4VcIrw5GAJI\n\n',
                    ),
                    TextSpan(
                      text: '2. https://youtu.be/bzPcQMnMZrE\n\n',
                    ),
                    TextSpan(
                      text: '3. https://youtu.be/HXzUk70i0wU\n\n',
                    ),
                    TextSpan(
                      text: '4. https://youtu.be/J-fo3GOp9lY\n\n',
                    ),
                    TextSpan(
                      text: '5. https://youtu.be/mM7QMT0IDrI\n\n',
                    ),
                    TextSpan(
                      text: '6. https://youtu.be/vOBDTkFI37c\n',
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '7. Sudarmo, U. (2013). ',
                    ),
                    TextSpan(
                      text: 'Kimia untuk SMA/MA Kelas XI. ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'Surakarta: Erlangga.\n',
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '8. Sutresna, N., Sholehudin, D. & Herlina, T. (2019). ',
                    ),
                    TextSpan(
                      text: 'Kimia. ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'Bandung: Grafindo.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
