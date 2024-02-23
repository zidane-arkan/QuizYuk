import "package:flutter/material.dart";
import "package:quiz_app/quiz_start.dart";

class ContainerHome extends StatelessWidget{
  const ContainerHome({super.key});
  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          colors: [
            Color.fromARGB(155, 225, 0, 255),
            Color.fromARGB(255, 144, 24, 148),
          ],
          end: AlignmentDirectional.bottomEnd
        )
      ),
      child: QuizStart(),
    );
  }
}