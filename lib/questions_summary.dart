import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryAnswers});
  final List<Map<String, Object>> summaryAnswers;

  @override
  Widget build(context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children : summaryAnswers.map((data) {
          return Row(children: [
            Text(
              ((data["question_index"] as int) + 1).toString(),
            ),
            // Restrict width of columns to match with width of row
            Expanded(
              child: Column(
                children : [
                  const SizedBox(height: 16,),
                  Text(
                    data["question"] as String,
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(data["correct_answer"] as String),
                  const SizedBox(height: 5,),
                  Text(data["user_answer"] as String),
                ],
              ),
            ),
          ],);
      }).toList(),
    );
  }
}