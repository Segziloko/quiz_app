import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite Colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Brown', 'score': 9},
        {'text': 'Grey', 'score': 8},
        {'text': 'Yellow', 'score': 7},
        {'text': 'Orange', 'score': 6},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 4},
        {'text': 'Pink', 'score': 3},
        {'text': 'Purple', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'How about your favourite Animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 9},
        {'text': 'Crocodile', 'score': 8},
        {'text': 'Vulture', 'score': 7},
        {'text': 'Shark', 'score': 6},
        {'text': 'Gorilla', 'score': 5},
        {'text': 'Monkey', 'score': 4},
        {'text': 'Dolphin', 'score': 3},
        {'text': 'Cat', 'score': 2},
        {'text': 'Dog', 'score': 1},
      ],
    },
    {
      'questionText': 'Which of these Sports are you best at?',
      'answers': [
        {'text': 'Kickboxing', 'score': 10},
        {'text': 'Boxing', 'score': 9},
        {'text': 'Cricket', 'score': 8},
        {'text': 'Swimming', 'score': 7},
        {'text': 'Volleyball', 'score': 6},
        {'text': 'Gymnastics', 'score': 5},
        {'text': 'Tennis', 'score': 4},
        {'text': 'Athletics', 'score': 3},
        {'text': 'Basketball', 'score': 2},
        {'text': 'Football', 'score': 1},
      ],
    },
    {
      'questionText':
          'If you were to get a Car, which of these brands would it be?',
      'answers': [
        {'text': 'Volkswagen', 'score': 10},
        {'text': 'Nissan', 'score': 9},
        {'text': 'Chevrolet', 'score': 8},
        {'text': 'Lexus', 'score': 7},
        {'text': 'BMW', 'score': 6},
        {'text': 'Tesla', 'score': 5},
        {'text': 'Audi', 'score': 4},
        {'text': 'Lamborghini', 'score': 3},
        {'text': 'Ferrari', 'score': 2},
        {'text': 'Mercedes-Benz', 'score': 1},
      ],
    },
    {
      'questionText': 'What Genre of Music is your favourite?',
      'answers': [
        {'text': 'Funk', 'score': 10},
        {'text': 'Rock', 'score': 9},
        {'text': 'Raggae', 'score': 8},
        {'text': 'Country', 'score': 7},
        {'text': 'Jazz', 'score': 6},
        {'text': 'Hip Hop', 'score': 5},
        {'text': 'R&B', 'score': 4},
        {'text': 'Pop', 'score': 3},
        {'text': 'Afrobeat', 'score': 2},
        {'text': 'Gospel', 'score': 1},
      ],
    },
    {
      'questionText': 'What kind of Movies do you love to watch?',
      'answers': [
        {'text': 'Horror', 'score': 10},
        {'text': 'Anime', 'score': 9},
        {'text': 'Documentary', 'score': 8},
        {'text': 'Crime', 'score': 7},
        {'text': 'Sci-Fi', 'score': 6},
        {'text': 'Sports', 'score': 5},
        {'text': 'Romance', 'score': 4},
        {'text': 'Comedy', 'score': 3},
        {'text': 'Drama', 'score': 2},
        {'text': 'Action', 'score': 1},
      ],
    },
    {
      'questionText': 'Finally, Which of these Fruits would you eat all day?',
      'answers': [
        {'text': 'Guava', 'score': 10},
        {'text': 'Pineapple', 'score': 9},
        {'text': 'Pear', 'score': 8},
        {'text': 'Mango', 'score': 8},
        {'text': 'Banana', 'score': 6},
        {'text': 'Carrot', 'score': 5},
        {'text': 'Watermelon', 'score': 4},
        {'text': 'Strawberry', 'score': 3},
        {'text': 'Orange', 'score': 2},
        {'text': 'Apple', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
    // if (_questionIndex < _questions.length) {
    //   print('There are still more questions');
    // } else {
    //   print('Sorry! There are no more questions');
    // }
  }

  _launchLI() async {
    const url = 'https://www.linkedin.com/in/olusesan-obakunle-aa08711b7/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGH() async {
    const url = 'https://github.com/Segziloko';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTW() async {
    const url = 'https://twitter.com/segziloko';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchIG() async {
    const url = 'https://www.instagram.com/segziloko';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BIO Quiz',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Results(_totalScore, _resetQuiz),
        bottomNavigationBar: Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: _launchLI,
                  child: Tooltip(
                    message: 'LinkedIn',
                    waitDuration: Duration(milliseconds: 500),
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _launchGH,
                  child: Tooltip(
                    message: 'Github',
                    waitDuration: Duration(milliseconds: 500),
                    child: Icon(
                      FontAwesomeIcons.githubSquare,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _launchTW,
                  child: Tooltip(
                    message: 'Twitter',
                    waitDuration: Duration(milliseconds: 500),
                    child: Icon(
                      FontAwesomeIcons.twitterSquare,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _launchIG,
                  child: Tooltip(
                    message: 'Instagram',
                    waitDuration: Duration(milliseconds: 500),
                    child: Icon(
                      FontAwesomeIcons.instagramSquare,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
