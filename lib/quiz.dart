import 'package:flutter/material.dart';
import 'package:second_flutter_app/answer_button/questions_screen.dart';
import 'package:second_flutter_app/start_widget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

const startScreen = 'start-screen';
const questionScreen = 'questions-screen';

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = questionScreen;
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswer.add(answer);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = activeScreen == startScreen
        ? StartWidget(switchScreen)
        : QuestionsScreen(chooseAnswer);

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
