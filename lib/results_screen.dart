import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
    for (var i =0 ; i < chosenAnswers.length; i++){
      summary.add({
        "question_index" : i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer" : chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {  
    List<Map<String, Object>> summaryData = getSummaryData();
    final int numTotalQuestions = questions.length ;
    final numCorrectQuestions = summaryData.where((answers) {
      return answers["correct_answer"] == answers["user_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all((40)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10,),
            // const Text(' List of answers and questions'),
            // ...chosenAnswers.map((e){
            //   return Text(e, style: const TextStyle(color: Colors.white),);
            // }),
            QuestionsSummary(summaryAnswers: summaryData,),
            const SizedBox(height: 30,),
            TextButton.icon(
              icon: const Icon(
                Icons.change_circle_sharp,
                color: Colors.white,
              ),
              onPressed: () {}, 
              label: const Text(
                "Restart Quiz",
                style: TextStyle(
                  color: Colors.white
                ),
              ),  
            ),
          ],
        ),
      ),
    );
  }
}