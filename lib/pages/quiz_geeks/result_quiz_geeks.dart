import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hidrokarbon_learning_app/theme.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ResultGeeks extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final String studentName;
  final String studentClass;

  ResultGeeks({
    required this.resultScore,
    required this.resetHandler,
    required this.studentName,
    required this.studentClass,
  });

  @override
  Widget build(BuildContext context) {
    int _totalRightScore = resultScore ~/ 5;
    int _totalWrongScore = 20 - resultScore ~/ 5;
    print('ini _totalRightScore $_totalRightScore');
    print('ini _totalWrongScore $_totalWrongScore');

    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getResultEmot(resultScore),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Hi, $studentName (Kelas: $studentClass)! Ini adalah nilai kamu:',
                      style: boldBlueTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Benar',
                          style: mediumBlackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$_totalRightScore',
                          style: mediumBlackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Salah',
                          style: mediumBlackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$_totalWrongScore',
                          style: mediumBlackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Nilai',
                          style: semiBoldBlackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '$resultScore',
                          style: semiBoldBlueTextStyle.copyWith(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: blueColor,
                          primary: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          resetHandler();
                          _sendResultQuiztoEmail(
                            studentName,
                            studentClass,
                            resultScore,
                            _totalRightScore,
                            _totalWrongScore,
                          );
                          Fluttertoast.showToast(
                            msg: 'Hasil Kuis berhasil disimpan',
                          );
                        },
                        child: Text(
                          'Ulangi Kuis',
                          style: semiBoldWhiteTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
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

Widget getResultEmot(int result) {
  if (result >= 90) {
    return Image.asset(
      'assets/emoticon/party_a.png',
      width: 180,
      height: 180,
    );
  } else if (result >= 80 && result < 90) {
    return Image.asset(
      'assets/emoticon/star_b.png',
      width: 180,
      height: 180,
    );
  } else if (result >= 60 && result < 80) {
    return Image.asset(
      'assets/emoticon/smiling_c.png',
      width: 180,
      height: 180,
    );
  } else if (result >= 40 && result < 60) {
    return Image.asset(
      'assets/emoticon/sad_d.png',
      width: 180,
      height: 180,
    );
  } else {
    return Image.asset(
      'assets/emoticon/sad_e.png',
      width: 180,
      height: 180,
    );
  }
}

_sendResultQuiztoEmail(
    studentName, studentClass, resultScore, rightScore, wrongScore) async {
  final serviceId = 'service_7nacjw8';
  final templateId = 'template_fo05mzw';
  final userId = 'user_6MKGTCZZow5BDIVCoqnmI';

  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd hh:mm:ss');
  String formattedDate = formatter.format(now);

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  await http.post(
    url,
    headers: {
      'origin': 'http://localhost',
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'email_subject':
            'Hasil Quiz Hidrokarbon, $studentName (Kelas: $studentClass)',
        'email_recipient': 'felixsianturi25@gmail.com',
        'student_name': studentName,
        'student_class': studentClass,
        'total_right_score': rightScore,
        'total_wrong_score': wrongScore,
        'total_score': resultScore,
        'request_time': formattedDate,
      }
    }),
  );
}
