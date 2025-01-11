import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sihpro/Screens/login/login.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/home2.dart';

void main() => runApp(MyApp10());

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'right to equality',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WordScrambleGame(),
    );
  }
}

class WordScrambleGame extends StatefulWidget {
  @override
  _WordScrambleGameState createState() => _WordScrambleGameState();
}

class _WordScrambleGameState extends State<WordScrambleGame> {
  List<String> words = ['KIDLET', 'KIDS', 'INFANT', 'TODDLE', 'MOBILE'];
  late String scrambledWord;
  late String correctWord;
  TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _startNewGame();
  }

  void _startNewGame() {
    correctWord = words[Random().nextInt(words.length)];
    scrambledWord = _scrambleWord(correctWord);
    inputController.text = '';
    setState(() {});
  }

  String _scrambleWord(String word) {
    List<String> letters = word.split('');
    letters.shuffle();
    return letters.join();
  }

  void _checkAnswer() {
    String playerAnswer = inputController.text.toUpperCase();
    if (playerAnswer == correctWord) {
      _showDialog('Correct!', 'Congratulations, you got it right!');
    } else {
      _showDialog(
          'Incorrect', 'Sorry, that\'s not the correct word. Try again!');
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _startNewGame();
              },
              child: Text('Next Word'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rights to Equality"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Unscramble the word:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              scrambledWord,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: inputController,
              decoration: InputDecoration(
                labelText: 'Your Answer',
              ),
              onSubmitted: (value) => _checkAnswer(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkAnswer,
              child: Text('Check Answer'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home2()))
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
