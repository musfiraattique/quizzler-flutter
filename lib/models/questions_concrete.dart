import 'package:quizzler/models/questions_template.dart';

class QuestionsList {
  
  int _questionNumber = 0;
  List<BuildQuestion> _questions = [
    BuildQuestion('Some cats are actually allergic to humans', true),
    BuildQuestion('You can lead a cow down stairs but not up stairs.', false),
    BuildQuestion('Approximately one quarter of human bones are in the feet.', true),
    BuildQuestion('A slug\'s blood is green.', true),
    // BuildQuestion('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    // BuildQuestion('It is illegal to pee in the Ocean in Portugal.', true),
    // BuildQuestion(
    //     'No piece of square dry paper can be folded in half more than 7 times.',
    //     false),
    // BuildQuestion(
    //     'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    //     true),
    // BuildQuestion(
    //     'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    //     false),
    // BuildQuestion(
    //     'The total surface area of two human lungs is approximately 70 square metres.',
    //     true),
    // BuildQuestion('Google was originally called \"Backrub\".', true),
    // BuildQuestion(
    //     'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    //     true),
    // BuildQuestion(
    //     'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    //     true),
  ];
  
  bool hasNextQuestion() {
    if(_questionNumber < _questions.length) {
      return true;
    }
    else return false;
  }

  bool isLastQuestion() {
    return _questionNumber == _questions.length - 1 ? true : false;
  }
  bool _incrementQuestion() {
    if(hasNextQuestion()) {
      print(_questions[_questionNumber].answer);
      _questionNumber++;
      return true;
    }
    else 
    return false;
  }
  String question() {
      return _incrementQuestion() ? _questions[_questionNumber - 1].question : _questions.last.question;
  }

  bool checkAnswer(bool answer) {
    return _questions[_questionNumber].answer == answer ? 
     true : false;
  }
}