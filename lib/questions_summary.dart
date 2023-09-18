import 'package:flutter/material.dart';
import 'package:second_flutter_app/result_row.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final Widget sizedBox = const SizedBox(height: 5);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final isCorrectAnswer =
                  data['correct_answer'] == data['user_answer'];
              final question = data['question'] as String;
              final correctAnswer = data['correct_answer'] as String;
              final userAnswer = data['user_answer'] as String;
              final questionIndex = data['question_index'] as int;

              return ResultRow(
                  isCorrectAnswer: isCorrectAnswer,
                  questionIndex: questionIndex,
                  question: question,
                  sizedBox: sizedBox,
                  correctAnswer: correctAnswer,
                  userAnswer: userAnswer);
            },
          ).toList(),
        ),
      ),
    );
  }
}
