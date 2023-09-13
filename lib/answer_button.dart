import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.onPressed, required this.answerText});

  final void Function() onPressed;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(78, 26, 87, 90),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
