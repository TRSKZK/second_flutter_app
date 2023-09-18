import 'package:flutter/material.dart';
import 'package:second_flutter_app/questions_summary.dart';
import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.results, required this.restartQuiz});

  final List<String> results;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < results.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': results[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((result) => result['correct_answer'] == result['user_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                style: const TextStyle(color: Colors.white),
                'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly.'),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
                icon: const Icon(Icons.refresh),
                onPressed: restartQuiz,
                label: const Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
