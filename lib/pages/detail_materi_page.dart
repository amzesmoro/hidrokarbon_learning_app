import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_01.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_02.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_03.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_04.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_05.dart';
import 'package:hidrokarbon_learning_app/pages/materi/materi_06.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class DetailMateriPage extends StatefulWidget {
  // const DetailMateriPage({ Key? key }) : super(key: key);

  final materiName;
  final materiNumber;

  DetailMateriPage({this.materiName, this.materiNumber});

  @override
  _DetailMateriPageState createState() => _DetailMateriPageState();
}

class _DetailMateriPageState extends State<DetailMateriPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Text(
          widget.materiName,
          style: boldWhiteTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: getDetailMateri(widget.materiNumber),
    );
  }
}

getDetailMateri(String materiNumber) {
  switch (materiNumber) {
    case '01':
      return Materi01();
    case '02':
      return Materi02();
    case '03':
      return Materi03();
    case '04':
      return Materi04();
    case '05':
      return Materi05();
    case '06':
      return Materi06();
    default:
      return Materi01();
  }
}

