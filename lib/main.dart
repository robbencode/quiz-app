import 'package:flutter/material.dart';
import './question.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
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
      home: Scaffold(
          appBar: AppBar(
            title: Text('first app'),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(1)),
              RaisedButton(
                  child: Text('Real Madrid'), onPressed: answerquestion),
              RaisedButton(
                  child: Text('Al ahly'),
                  onPressed: () {
                    print('a7mos');
                  }),
              RaisedButton(
                child: Text('Buca Juniors'),
                onPressed: () => print('a7mos'),
              )
            ],
          )),
    );
  }
}
