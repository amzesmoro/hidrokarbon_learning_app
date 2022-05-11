class Quiz {
  int number;
  String question;
  bool hasQuestionImage;
  String questionImageUrl;
  List<Answer> answers;

  Quiz({
    required this.number,
    required this.question,
    required this.hasQuestionImage,
    required this.questionImageUrl,
    required this.answers,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    var list = json['answers'] as List;
    List<Answer> answerList = list.map((item) => Answer.fromJson(item)).toList();
    
    return Quiz(
      number: json['number'],
      question: json['question'],
      hasQuestionImage: json['has_question_image'],
      questionImageUrl: json['question_image_url'],
      answers: answerList,
    );
  }
}

class Answer {
  String text;
  int score;

  Answer({
    required this.text,
    required this.score,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      text: json['text'],
      score: json['score'],
    );
  }
}
