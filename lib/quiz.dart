import "package:flutter/material.dart";
import "package:quiz_app/question_screen.dart";

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              end: Alignment.bottomRight,
            ),
          ),
          child: QuestionScreen(),
        ),        
      ),
    );
  }
}