import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../models/quiz_question.dart';
import '../models/anwser_button.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}


class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQuestion.text,
          textAlign: TextAlign.center,
          style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {
              print(answer);
            });
          })
        ],
      ),
    );
  }
}