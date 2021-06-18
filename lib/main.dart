import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;
  void answerquestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourit club?',
      'what\'s your favoutit player?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('first app'),
        ),
        body: Column(
          children: [
            if (questionindex < questions.length)
              Question(questions[questionindex]),
            Answer(answerquestion),
            Answer(answerquestion),
            Answer(answerquestion)
          ],
        ),
      ),
    );
  }
}




/* 
              RaisedButton(
                  child: Text('Al ahly'),
                  onPressed: () {
                    print('a7mos');
                  }),
              RaisedButton(
                child: Text('Buca Juniors'),
                onPressed: () => print('a7mos'),
              )*/
