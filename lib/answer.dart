import 'package:flutter/material.dart';
import'main.dart';
class Answer extends StatelessWidget {
    final String answerText;
    final VoidCallback x;
    Answer(this.answerText,this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
       width:300, 
       margin:EdgeInsets.all(10.0),
       
        child:
        // ignore: deprecated_member_use
        RaisedButton(   
                color:b,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child:Text(answerText,style:TextStyle(fontSize:25)),
                onPressed: x,
            ),
    );
  }
}