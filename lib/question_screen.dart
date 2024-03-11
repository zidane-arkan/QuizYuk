import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  var activeQuestion = 0;
  void updateQuestion(){
    setState((){
      if (activeQuestion < questions.length-1){
        activeQuestion++;
      } else{
        activeQuestion = 0;
      }
    });
  }
  @override
  Widget build(context){
    final currentQuestion = questions[activeQuestion];
    return SizedBox(
      // width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text, 
              // style: const TextStyle(
              //   color: Colors.white,
              //   fontSize: 18,
              // ),
              style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 130, 100, 211),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Use Spreading to Spread list values [Because map return list and we need widget in Children]
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(
                answerText: answer, 
                onTap: updateQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}