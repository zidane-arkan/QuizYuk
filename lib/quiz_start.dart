import 'package:flutter/material.dart';

class QuizStart extends StatefulWidget{
  const QuizStart({super.key});
  @override
  State<QuizStart> createState(){
    return _QuizStart();
  }
}

class _QuizStart extends State<QuizStart>{
  @override
  Widget build(context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [                
            Image.asset("assets/images/quiz-logo.png"),
            OutlinedButton(
              onPressed: (){}, 
              style: TextButton.styleFrom(
                foregroundColor: Colors.amberAccent,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              child: const Text("Start Quiz"),
            ),
            const Center(
              child : Text(
                "Learn Flutter the Fun Way!", 
                style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      );
  }
}