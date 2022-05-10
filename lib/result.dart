import 'package:flutter/material.dart';
import'main.dart';
class Result extends StatelessWidget {
    final  VoidCallback q ;
    final int resultScore;
    Result(this.q,this.resultScore);
    
    String get resultPhrase{
         String resultText;
         if(resultScore>=70)
         {
             resultText="Excellent!";
         }
         else if(resultScore>=40){
            resultText="Very Good!";
         }
         else if(resultScore>=20){
            resultText="Good!";
         }
         else{
            resultText="Failed!";
         }






         return resultText;

        
    }
  @override
  Widget build(BuildContext context) {
    return  Center(
        child:
        Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children:
            [
                Text(
            "Your Score is $resultScore",
            style:
            TextStyle(fontSize:35,fontWeight: FontWeight.bold,color: b, ), 
            textAlign : TextAlign.center
            ),
            Text(
            resultPhrase,
            style:
            TextStyle(fontSize:40,fontWeight: FontWeight.bold,color: b, ), 
            textAlign : TextAlign.center
            ),
            // ignore: deprecated_member_use
            FlatButton(
               child:
               Text("Restart the App",style:TextStyle(fontSize: 30,color:b ,decoration: TextDecoration.underline,)),
               onPressed:q,
               
            ),
            ],
         
        ),
    );
  }
}