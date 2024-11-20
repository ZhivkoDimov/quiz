import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key, 
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }



  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity, 
      child: Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!', style: GoogleFonts.abel(
          color: Colors.white,
          fontSize: 24,
        ),),
        SizedBox(height: 30),
        QuestionsSummary(summaryData: summaryData), 
        SizedBox(height: 30),
        TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 50, 0, 90),
          ),
          onPressed: onRestart,
          icon: Icon(Icons.refresh),
          label: Text('Restart Quiz!',
          style: GoogleFonts.abel(
            color: Colors.white,
          ),
          )
          )
        ],
      ),
    ),
    );
  }
}
