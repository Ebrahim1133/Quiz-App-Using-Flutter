import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
    final List question;
    final  int questionIndex;
    final  Function answerQuestion;
    Quiz(this.question,this.questionIndex,this.answerQuestion );
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment : MainAxisAlignment.center,
            children: [
               Question(question[questionIndex]['questionText'] ),

               ...(question[questionIndex]['answers']as List).map((answer){
                  return Answer(answer['text'], ()=>answerQuestion(answer['score']) );
                  
               }).toList(),
               
            ],
          );
  }
}