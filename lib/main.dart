import "package:flutter/material.dart";

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: Column(
            children: [
                Image.asset("assets/images/quiz-logo.png"),
                const Center(
                  child : Text(
                    "Learn Flutter the Fun Way!", 
                    style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          )
        )
      )
    )
  );
}