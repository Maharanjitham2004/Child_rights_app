import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sihpro/AGE/health.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/home2.dart';

void main() => runApp(gamehe());

class gamehe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Food Quiz',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HealthyFoodQuiz(),
    );
  }
}

class HealthyFoodQuiz extends StatefulWidget {
  @override
  _HealthyFoodQuizState createState() => _HealthyFoodQuizState();
}

class _HealthyFoodQuizState extends State<HealthyFoodQuiz> {
  List<String> questions = [
    'Is broccoli a healthy food?',
    'Are apples good for your health?',
    'Is pizza a healthy food choice?',
    'Are carrots a nutritious snack?',
    'Is soda a healthy beverage?',
  ];

  List<bool> answers = [true, true, false, true, false];

  int currentQuestionIndex = 0;

  void _checkAnswer(bool userAnswer) {
    bool correctAnswer = answers[currentQuestionIndex];

    if (userAnswer == correctAnswer) {
      _showDialog('Correct!', 'Well done! That is the right answer.');
    } else {
      _showDialog(
          'Incorrect', 'Oops! That\'s not the correct answer. Try again!');
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
                _nextQuestion();
              },
              child: Text('Next Question'),
            ),
          ],
        );
      },
    );
  }

  void _nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      _showDialog('Quiz Complete',
          'Congratulations! You have completed the Healthy Food Quiz.');
      // You can add more logic here for restarting the quiz or navigating to a new screen.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Food Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              questions[currentQuestionIndex],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _checkAnswer(true),
              child: Text('True'),
            ),
            ElevatedButton(
              onPressed: () => _checkAnswer(false),
              child: Text('False'),
            ),
            SizedBox(
              height: 50,
              width: 50,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home2()))
              },
              child: Text('Completed'),
            ),
          ],
        ),
      ),
    );
  }
}
