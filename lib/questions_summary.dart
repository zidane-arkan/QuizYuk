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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children : summaryAnswers.map((data) {
            return Row(
              children: [
                Container(
                  width: 50,
                  padding : const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    border: Border.all(color:const Color.fromARGB(255, 231, 43, 231))
                  ),
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding( 
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                ),
                // Restrict width of columns to match with width of row
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children : [
                      const SizedBox(height: 16,),
                      Text(
                        data["question"] as String,
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        data["correct_answer"] as String,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        data["user_answer"] as String,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,)
            ],);
          }).toList(),
        ),
      ),
    );
  }
}