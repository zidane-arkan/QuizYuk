import "package:flutter/material.dart";
import "package:quiz_app/start_screen.dart";
import "package:quiz_app/question_screen.dart";

// Deep Dive: Flutter's (Stateful) Widget Lifecycle
// Every Flutter Widget has a built-in lifecycle: A collection of methods that are automatically executed by Flutter (at certain points of time).

// There are three extremely important (stateful) widget lifecycle methods you should be aware of:

// initState(): Executed by Flutter when the StatefulWidget's State object is initialized

// build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called

// dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)

// You will encounter them all multiple times throughout the course - therefore you don't have to memorize them now and you will see them in action. It's still worth learning about them right now already.

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  // Widget? activeScreen;
  var activeScreen = "start-screen";
  
  // @override
  // void initState(){
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen(){
    setState(() {
      activeScreen = "question-screen";
    });
  }
  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

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
          child: screenWidget,
        ),        
      ),
    );
  }
}