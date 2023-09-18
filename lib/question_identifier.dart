import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer ? Colors.green : Colors.pink,
        border: Border.all(
          color: Colors.white,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Text((questionIndex + 1).toString()),
    );
  }
}
