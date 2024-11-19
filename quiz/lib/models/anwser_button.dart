import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 50, 0, 90),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ));
  }
}
