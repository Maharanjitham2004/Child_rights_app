import 'package:flutter/material.dart';

void main() {
  runApp(lead());
}

class User {
  final String name;
  final int score;

  User(this.name, this.score);
}

class lead extends StatelessWidget {
  final List<User> leaderboard = [
    User('Kavi', 150),
    User('Mano', 120),
    User('Ram', 180),
    User('Nivi', 90),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Leaderboard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Leaderboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Column(
                children: leaderboard
                    .map((user) => ListTile(
                          title: Text(user.name),
                          subtitle: Text('Score: ${user.score}'),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
