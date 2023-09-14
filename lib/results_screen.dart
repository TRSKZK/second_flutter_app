import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.results});

  final List<String> results;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You answered x out of y questions correctly.'),
            const SizedBox(height: 30),
            const Text('=List of correct answers='),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}