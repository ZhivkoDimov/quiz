import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/logo/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50, top: 50),
              child: const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 50, 0, 90),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              label: const Text('Start Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      ),
    );
  }
}
