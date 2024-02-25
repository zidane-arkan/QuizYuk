import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answerText, this.onTap,{super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context){
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: Colors.white)
      ),
      child: Text(answerText),
    );
  }
}