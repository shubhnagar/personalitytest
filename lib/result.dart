import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resethandler;
  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome! :-)';
      print(resultScore);
    } else if (resultScore <= 14) {
      resultText = 'You are Okay! :-?';
      print(resultScore);
    } else {
      resultText = 'You are Mediocre, Too bad a Score ....... Awwww! :-(';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!!'),
            textColor: Colors.blue,
            onPressed: resethandler,
          ),
        ],
      ),
    );
  }
}
