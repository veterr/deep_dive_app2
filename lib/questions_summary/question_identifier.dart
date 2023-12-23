import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    // Без ширины и высоты в 30 шейп отметки был овальным и прижимался к цифре
    // return CircleAvatar(
    //   backgroundColor: isCorrectAnswer
    //       ? const Color.fromARGB(255, 150, 198, 241)
    //       : const Color.fromARGB(255, 249, 133, 241),
      return Container(
        width: 30,
        height: 30,
        // Без этого аттрибута текст уезжал в угол
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 150, 198, 241)
              : const Color.fromARGB(255, 249, 133, 241),
          borderRadius: BorderRadius.circular(100),
        ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
