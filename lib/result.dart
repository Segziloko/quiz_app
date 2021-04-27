import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 14) {
      resultText = 'Wow, you\'re awesome!';
    } else if (resultScore <= 21) {
      resultText = 'You\'re definitely coool!!';
    } else if (resultScore <= 28) {
      resultText = 'Uhmm you seem likeable!!';
    } else if (resultScore <= 42) {
      resultText = 'You\'re quite decent!!';
    } else if (resultScore <= 56) {
      resultText = 'You\'re kinda strange!!!';
    } else {
      resultText = 'Damn! you\'ve terrible taste!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                'Restart Quiz!',
              ),
              style: ButtonStyle(
                  visualDensity: VisualDensity.adaptivePlatformDensity),

              // textColor: Colors.deepOrange,
              onPressed: resetHandler,
            ),
          ]),
    );
  }
}
