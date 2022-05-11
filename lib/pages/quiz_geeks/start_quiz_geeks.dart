import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/quiz_geeks/quiz_item_geeks.dart';
import 'package:hidrokarbon_learning_app/pages/quiz_geeks/result_quiz_geeks.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class StartQuizGeeks extends StatefulWidget {
  final studentName;
  final studentClass;

  StartQuizGeeks({
    required this.studentName,
    required this.studentClass,
  });

  @override
  _StartQuizGeeksState createState() => _StartQuizGeeksState();
}

class _StartQuizGeeksState extends State<StartQuizGeeks> {
  final _questions = const [
    {
      "number": 1,
      "question":
          "Di antara senyawa berikut yang merupakan senyawa karbon organik adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "H2SO4", "score": 0},
        {"text": "H2O", "score": 0},
        {"text": "CH4", "score": 5},
        {"text": "H2CO3", "score": 0},
        {"text": "H3PO4", "score": 0}
      ]
    },
    {
      "number": 2,
      "question":
          "Kekhasan atom karbon yang menyebabkan unsur karbon mempunyai banyak ragam senyawa adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {
          "text":
              "memiliki 4 elektron valensi yang dapat digunakan untuk membentuk ikatan kovalen",
          "score": 5
        },
        {
          "text":
              "memiliki 4 elektron valensi yang dapat digunakan untuk transfer elektron",
          "score": 0
        },
        {
          "text": "memiliki konfigurasi elektron yang stabil seperti gas mulia",
          "score": 0
        },
        {"text": "membentuk rantai karbon dengan berbagai bentuk", "score": 0},
        {"text": "berwujud padat pada suhu kamar", "score": 0}
      ]
    },
    {
      "number": 3,
      "question":
          "Perhatikan stuktur senyawa hidrokarbon dibawah ini:\nAtom karbon primer, sekunder,tersier,kuarterner secara berurutan terletak pada nomor . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_3.png",
      "answers": [
        {"text": "1, 2, 3, 5", "score": 0},
        {"text": "1, 2, 4, 5", "score": 0},
        {"text": "1, 2, 5, 3", "score": 5},
        {"text": "5, 3, 2, 1", "score": 0},
        {"text": "5, 6, 7, 8", "score": 0}
      ]
    },
    {
      "number": 4,
      "question":
          "Berdasarkan strukturnya, senyawa dibawah ini yang mengandung atom karbon tersier yaitu pada atom C nomor . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_4.png",
      "answers": [
        {"text": "3", "score": 0},
        {"text": "4", "score": 0},
        {"text": "5", "score": 5},
        {"text": "2", "score": 0},
        {"text": "6", "score": 0}
      ]
    },
    {
      "number": 5,
      "question":
          "Contoh pasangan senyawa berikut yang tergolong senyawa hidrokarbon adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "C2H5OH dan H2SO4", "score": 0},
        {"text": "CH3COOH dan HCl", "score": 0},
        {"text": "NaOH dan H2O", "score": 0},
        {"text": "C4H10 dan C6H6", "score": 5},
        {"text": "HClO3 dan C6H12O6", "score": 0}
      ]
    },
    {
      "number": 6,
      "question": "Deret homolog alkana mempunyai rumus umum . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "CnH2n+2", "score": 5},
        {"text": "CnH2n-2", "score": 0},
        {"text": "CnH2n+1", "score": 0},
        {"text": "CnH2n-1", "score": 0},
        {"text": "CnH2n", "score": 0}
      ]
    },
    {
      "number": 7,
      "question":
          "Senyawa hidrokarbon berikut yang mempunyai 6 atom karbon adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "3,3-dimetilpentana", "score": 0},
        {"text": "n-heptana", "score": 0},
        {"text": "3-metilheksana", "score": 0},
        {"text": "2,3-dimetilbutana", "score": 5},
        {"text": "2,3-dimetilpentana", "score": 0}
      ]
    },
    {
      "number": 8,
      "question": "Nama senyawa dengan struktur dibawah ini adalah . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_8.png",
      "answers": [
        {"text": "2-etil-3,5-dimetilheksana", "score": 0},
        {"text": "2,5-dimetil-3-etilheksana", "score": 0},
        {"text": "3-etil-2,5-dimetilheksana", "score": 5},
        {"text": "4-etil-3,5-dimetilheksana", "score": 0},
        {"text": "2,5-dimetil-4-etilheksana", "score": 0}
      ]
    },
    {
      "number": 9,
      "question": "Penamaan alkana berikut yang tidak tepat adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "2-metilbutana", "score": 0},
        {"text": "2-etilpentana", "score": 0},
        {"text": "2,4-dimetilpentana", "score": 0},
        {"text": "2,2,3-trimetilbutana", "score": 0},
        {"text": "5-etil-2-metilheksana", "score": 5}
      ]
    },
    {
      "number": 10,
      "question":
          "Perhatikan struktur senyawa hidrokarbon dibawah ini:\nNama senyawa hidrokarbon dibawah adalah . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_10.png",
      "answers": [
        {"text": "2-butena", "score": 0},
        {"text": "trans-2-butana", "score": 0},
        {"text": "trans-2-butena", "score": 5},
        {"text": "cis-2-butana", "score": 0},
        {"text": "cis -2-butena", "score": 0}
      ]
    },
    {
      "number": 11,
      "question": "Penamaan alkuna berikut ini yang paling tepat adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "4-isopropil-2-pentuna", "score": 0},
        {"text": "4,5-dimetil-2-heksuna", "score": 5},
        {"text": "4,5-trimetil-2-pentuna", "score": 0},
        {"text": "2,3-isopropil-3-pentuna", "score": 0},
        {"text": "2,3-trimetil-4-heksuna", "score": 0}
      ]
    },
    {
      "number": 12,
      "question":
          "Perhatikan struktur hidrokarbon dibawah ini:\nNama dari senyawa tersebut adalah . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_12.png",
      "answers": [
        {"text": "2-metil-2-metil-3-heptuna", "score": 0},
        {"text": "2,2-dimetil-3-heptuna", "score": 5},
        {"text": "2,2-dimetil-4-heptuna", "score": 0},
        {"text": "6,6-dimetil-4-heptuna", "score": 0},
        {"text": "6,6-dimetil-5-heptuna", "score": 0}
      ]
    },
    {
      "number": 13,
      "question": "Jumlah isomer alkana dengan rumus C4H10 adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "2", "score": 5},
        {"text": "3", "score": 0},
        {"text": "4", "score": 0},
        {"text": "5", "score": 0},
        {"text": "6", "score": 0}
      ]
    },
    {
      "number": 14,
      "question":
          "Di antara senyawa berikut yang merupakan isomer dari heksana adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "2-metilbutana", "score": 0},
        {"text": "3-metilheksana", "score": 0},
        {"text": "2,2-dimetilpropana", "score": 0},
        {"text": "2,2-dimetilbutana", "score": 5},
        {"text": "2,2,3-trimetilbutana", "score": 0}
      ]
    },
    {
      "number": 15,
      "question":
          "Senyawa di bawah ini yang berwujud gas pada suhu kamar adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "n-butana", "score": 5},
        {"text": "n-pentana", "score": 0},
        {"text": "n-heksana", "score": 0},
        {"text": "n-heptana", "score": 0},
        {"text": "n-oktana", "score": 0}
      ]
    },
    {
      "number": 16,
      "question":
          "Di antara senyawa hidrokarbon berikut yang titik didihnya paling rendah adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "n-heptana", "score": 0},
        {"text": "2-metilpentana", "score": 0},
        {"text": "2,3-dimetilpentana", "score": 0},
        {"text": "n-oktana", "score": 0},
        {"text": "2,3,3-trimetilbutana", "score": 5}
      ]
    },
    {
      "number": 17,
      "question":
          "Perhatikan reaksi berikut:\nNReaksi senyawa hidrokarbon dibawah ini merupakan reaksi . . .",
      "has_question_image": true,
      "question_image_url": "assets/quiz_images/soal_17.png",
      "answers": [
        {"text": "substitusi", "score": 0},
        {"text": "eliminasi", "score": 5},
        {"text": "oksidasi", "score": 0},
        {"text": "adisi", "score": 0},
        {"text": "polimerisasi", "score": 0}
      ]
    },
    {
      "number": 18,
      "question":
          "Reaksi pertukaran atom H dengan atom lain disebut reaksi . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "eliminasi", "score": 0},
        {"text": "substitusi", "score": 5},
        {"text": "adisi", "score": 0},
        {"text": "oksidasi", "score": 0},
        {"text": "reduksi", "score": 0}
      ]
    },
    {
      "number": 19,
      "question":
          "Senyawa alkena yang digunakan untuk memasakkan buah-buahan secara buatan adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "etilena", "score": 5},
        {"text": "propena", "score": 0},
        {"text": "butuna", "score": 0},
        {"text": "pentuna", "score": 0},
        {"text": "gliserin", "score": 0}
      ]
    },
    {
      "number": 20,
      "question":
          "Senyawa hidrokarbon yang biasanya digunakan para dokter dibidang kesehatan untuk membius adalah obat anestesi. Senyawa tersebut adalah . . .",
      "has_question_image": false,
      "question_image_url": "",
      "answers": [
        {"text": "polietena", "score": 0},
        {"text": "asetilena", "score": 0},
        {"text": "freon", "score": 0},
        {"text": "halothane", "score": 5},
        {"text": "isoprena", "score": 0}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Text(
          'Soal Kuis',
          style: boldWhiteTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: _questionIndex < _questions.length
                    ? QuizItemGeeks(
                        questionIndex: _questionIndex,
                        answerQuestion: _answerQuestion,
                        questions: _questions,
                      )
                    : ResultGeeks(
                        resultScore: _totalScore,
                        resetHandler: _resetQuiz,
                        studentName: widget.studentName,
                        studentClass: widget.studentClass,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
