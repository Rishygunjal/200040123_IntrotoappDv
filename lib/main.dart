import 'package:flutter/material.dart';
import 'quetn.dart';
import 'data.dart';

void main() =>runApp(MaterialApp(
  home: Quiz()

));


class Quiz extends StatefulWidget {


  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  // List<Question> questions = [
  //       Question(question : 'ok?',answer: 'Yes',wronganswer: 'No' ),
  //
  // ];
  int score=0;
  int i=0;
  String temp='';

  Widget question_template(question){
    if(i==2){
      return Column(
        children: <Widget>[
       Text(
      "Score : ${score}",

        style: TextStyle(
          fontSize: 100.0,
          color : Colors.green[500],
        ),
      ),
          IconButton(
            icon: const Icon(Icons.restart_alt),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                i=0;
                score = 0;
              });
            },
          ),
          
        ],
        
      );
      return Text(
          "Score : ${score}",

          style: TextStyle(
        fontSize: 100.0,
        color : Colors.green[500],
      ),
      );
    }else{
    return Card(

      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(

              question.question,

              style: TextStyle(
                fontSize: 70.0,
                color : Colors.amber,
              ),

            ),
            SizedBox(height : 70.0),
            Row(


              children: <Widget>[
                RaisedButton(

                  onPressed: () {
                    setState(() {
                      if(i==3) {
                        score = 0;
                      }else{
                        score+=1;
                      }
                      if(i==3) {
                        i = 0;
                      }else{
                        i+=1;
                      }
                    });

                  },

                  child: Text(

                      question.answer,
                  style: TextStyle(
                    fontSize: 50.0,
                    color : Colors.amber,
                  ))),
                SizedBox(width : 90.0),
                RaisedButton(

                    onPressed: () {
                      setState(() {

                        if(i==3) {
                          score = 0;
                        }else{
                          score+=0;
                        }
                        if(i==3) {
                          i = 0;
                        }else{
                          i+=1;
                      }});

                    },
                    child: Text(question.wronganswer,
                        style: TextStyle(
                          fontSize: 50.0,
                          color : Colors.amber,
                        ))),




            ]),
        SizedBox(height: 100.0),
        Text(

          'Score : ${score}/2',
          style: TextStyle(
            fontSize: 30.0,
            color : Colors.red,
          )),



          ],
        ),
      ),
    );}

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title : Text('Unsafe'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body : question_template(questions[i])
        // children: questions.map((qn) {
        //  return question_template(qn) ;




        );








  }
}
