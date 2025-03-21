import 'package:flutter/material.dart';

import 'package:adv_basics/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int,
            ),
            const SizedBox(width: 20),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemData['question'] as String,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
              Flexible(
                child: Text(itemData['user_answer'] as String,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 202, 171, 252),
                      ))),
                  Flexible(
                    child: Text(itemData['correct_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 181, 254, 246),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
