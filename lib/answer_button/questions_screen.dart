import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_flutter_app/answer_button.dart';
import 'package:second_flutter_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer, {super.key});

  final void Function(String) chooseAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.chooseAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                textAlign: TextAlign.center,
                currentQuestion.text,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(100, 189, 129, 215),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map(
                    (answer) => AnswerButton(
                      answerText: answer,
                      onPressed: () => answerQuestion(answer),
                    ),
                  ),
            ]),
      ),
    );
  }
}
