import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState(){
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen>{
  @override
  Widget build(context){
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
              "This is question Screen",
              
            ),
          ),
      ],
    );
  }
}