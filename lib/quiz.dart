import 'package:flutter/material.dart';
import 'package:second_flutter_app/answer_button/questions_screen.dart';
import 'package:second_flutter_app/results_screen.dart';
import 'package:second_flutter_app/start_widget.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

const startScreen = 'start-screen';
const questionScreen = 'questions-screen';
const resultsScreen = 'results-screen';

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = questionScreen;
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = startScreen;
      selectedAnswer = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = resultsScreen;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartWidget(switchScreen);

    if (activeScreen == questionScreen) {
      screenWidget = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == resultsScreen) {
      screenWidget =
          ResultScreen(results: selectedAnswer, restartQuiz: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: screenWidget),
      ),
    );
  }
}
