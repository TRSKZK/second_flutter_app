import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          height: 350,
          color: const Color.fromARGB(150, 222, 222, 232),
        ),
        const SizedBox(height: 40),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          label: const Text(
            'Start Quiz',
          ),
          icon: const Icon(Icons.arrow_right),
        ),
      ]),
    );
  }
}
