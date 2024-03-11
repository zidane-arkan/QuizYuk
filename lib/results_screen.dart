import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all((40)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('You answered correctly')
          ],
        ),
      ),
    );
  }
}