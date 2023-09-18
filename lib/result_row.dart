import 'package:flutter/material.dart';
import 'package:second_flutter_app/question_identifier.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
    required this.question,
    required this.sizedBox,
    required this.correctAnswer,
    required this.userAnswer,
  });

  final bool isCorrectAnswer;
  final int questionIndex;
  final String question;
  final Widget sizedBox;
  final String correctAnswer;
  final String userAnswer;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer, questionIndex: questionIndex),
      const SizedBox(width: 20),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(style: const TextStyle(color: Colors.white), question),
          const SizedBox(height: 15),
          Text(style: const TextStyle(color: Colors.green), correctAnswer),
          sizedBox,
          Text(style: const TextStyle(color: Colors.purple), userAnswer),
          sizedBox,
        ]),
      ),
    ]);
  }
}
