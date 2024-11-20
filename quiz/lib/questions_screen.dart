import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/anwser_button.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);  
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {

    
    final currentQuestion = questions[currentQuestionIndex];
    

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(answerText: answer, onTap: (){
              answerQuestion(answer);
            }
            );
          })
        ],
      ),
    );
  }
}