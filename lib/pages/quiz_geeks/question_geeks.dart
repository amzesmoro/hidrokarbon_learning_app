import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class QuestionGeeks extends StatelessWidget {
  // const QuestionGeeks({ Key? key }) : super(key: key);
  final questionNumber;
  final question;
  final hasQuestionImage;
  final questionImageUrl;

  QuestionGeeks({
    this.questionNumber,
    this.question,
    this.hasQuestionImage,
    this.questionImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Soal $questionNumber',
            style: semiBoldBlueTextStyle.copyWith(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            question,
            style: mediumBlackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          hasQuestionImage
              ? Image.asset(
                  questionImageUrl,
                )
              : Container(),
        ],
      ),
    );
  }
}
