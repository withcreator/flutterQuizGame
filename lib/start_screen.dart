import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(240, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the fun way',
            style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 25),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
