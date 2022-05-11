import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/quiz_geeks/answer_geeks.dart';
import 'package:hidrokarbon_learning_app/pages/quiz_geeks/question_geeks.dart';
import 'package:hidrokarbon_learning_app/theme.dart';


class QuizItemGeeks extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  QuizItemGeeks({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          onPrimary: whiteColor,
          primary: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              QuestionGeeks(
                // questions[questionIndex]['question'] as String,
                questionNumber: questions[questionIndex]['number'],
                question: questions[questionIndex]['question'],
                hasQuestionImage: questions[questionIndex]
                    ['has_question_image'],
                questionImageUrl: questions[questionIndex]
                    ['question_image_url'],
              ),
              ...(questions[questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                return AnswerGeeks(() => answerQuestion(answer['score']),
                    answer['text'] as String);
              }).toList(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
