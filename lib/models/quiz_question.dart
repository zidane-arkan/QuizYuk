class QuizQuestion{
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  // Chaining = Calling method as the results of calling another methods
  List<String> getShuffledAnswers(){
    final shuffledList =  List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}