import "package:flutter/material.dart";
import 'package:quiz_app/start_screen.dart';

class ContainerHome extends StatelessWidget{
  const ContainerHome({super.key});
  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
          end: AlignmentDirectional.bottomEnd
        ),
      ),
      child: StartScreen(),
    );
  }
}