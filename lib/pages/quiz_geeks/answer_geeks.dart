import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class AnswerGeeks extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  AnswerGeeks(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          selectHandler();
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 2,
            bottom: 2,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Container(
                  child: Text(
                    answerText,
                    style: mediumBlackTextStyle.copyWith(
                      fontSize: 14,
                      color: blueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
