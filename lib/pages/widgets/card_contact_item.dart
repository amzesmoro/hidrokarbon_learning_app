import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/widgets/contact_item.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class CardContactItem extends StatelessWidget {
  final isStudent;

  CardContactItem({this.isStudent});

  @override
  Widget build(BuildContext context) {
    if (isStudent) {
      return Container(
        child: Row(
          children: [
            Image.asset(
              'assets/images/felix.png',
              width: 107,
              height: 167,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Felix  Valentino Sianturi',
                  style: boldBlackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Bilingual Pendidikan Kimia',
                  style: mediumBlackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactItem(
                        icon: 'assets/images/email.png',
                        name: 'felixsianturi25@gmail.com',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ContactItem(
                        icon: 'assets/images/contact.png',
                        name: '082164885273',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ContactItem(
                        icon: 'assets/images/location.png',
                        name: 'Jl Taduan No. 104,\nKec. Medan Tembung',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ContactItem(
                        icon: 'assets/images/instagram.png',
                        name: 'frisianflag_1',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/images/dosen.png',
            width: 107,
            height: 167,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. techn. Marini\nDamanik, S.Si., M.Si.',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '197710262008122001',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Lektor Kepala',
                style: mediumBlackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactItem(
                      icon: 'assets/images/email.png',
                      name: 'marini@unimed.co.id',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ContactItem(
                      icon: 'assets/images/contact.png',
                      name: '08116332610',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ContactItem(
                      icon: 'assets/images/location.png',
                      name: 'Jalan William Iskandar Ps. V\nNo. 104, Kec. Percut Sei Tuan',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
