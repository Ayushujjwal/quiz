import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('9+9=18', true),
    Question('29-8=45', false),
    Question('2*4=8', true),
    Question('4*9=36', true),
    Question('2-2=0', true),
    Question('7*4=28', true),
    Question('45-3=23', false),
    Question('45+7=52', true),
    Question('69+4=56', false),
    Question('99+0=99', true),
    Question('34+6=40', true),
    Question('9*9=81', true),
    Question('10*11=110', true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
