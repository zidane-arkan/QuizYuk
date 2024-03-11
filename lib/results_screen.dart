import 'package:flutter/material.dart';


class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.answersList});
  final List<String> answersList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all((40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30,),
            // Scrollable(viewportBuilder: viewportBuilder),
            const Text(' List of answers and questions'),
            ...answersList.map((e){
              return Text(e, style: TextStyle(color: Colors.white),);
            }),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: () {}, 
              child: const Text("s"),  
            ),
          ],
        ),
      ),
    );
  }
}