import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryAnswers});
  final List<Map<String, Object>> summaryAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : summaryAnswers.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.purple,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 20)),
                // Restrict width of columns to match with width of row
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
                      // const SizedBox(height: 10,),
                      Text(
                        data["question"] as String,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.start,
                      ),
                      // const SizedBox(height: 10,),
                      Text(
                        data["correct_answer"] as String,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 0,
                          color: Colors.purple,
                        ),
                        
                      ),
                      // const SizedBox(height: 5,),
                      Text(
                        data["user_answer"] as String,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 0,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
            ],);
          }).toList(),
        ),
      ),
    );
  }
}