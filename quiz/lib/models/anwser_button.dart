import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
        onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 50, 0, 90),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: GoogleFonts.abel(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
