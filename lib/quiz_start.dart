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
            Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
                color: const Color.fromARGB(140, 255, 255, 255),
            ),                
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset(
            //     "assets/images/quiz-logo.png",
            //     width: 300,
            //   ),
            // ),
            const SizedBox(height: 50),
            const Center(
              child : Text(
                "Learn Flutter the Fun Way!", 
                style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            label: const Text("Start Quiz"),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white
            ),
          ),
        ],
      );
  }
}