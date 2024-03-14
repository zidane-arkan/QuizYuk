import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryAnswers});
  final List<Map<String, Object>> summaryAnswers;

  @override
  Widget build(context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}