import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartWidget extends StatelessWidget {
  const StartWidget(
    this.switchScreen, {
    super.key,
  });

  final void Function() switchScreen;

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
        Text('Learn Flutter the fun way',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(100, 189, 129, 215),
            ))),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: switchScreen,
          label: const Text(
            'Start Quiz',
          ),
          icon: const Icon(Icons.arrow_right),
        ),
      ]),
    );
  }
}
