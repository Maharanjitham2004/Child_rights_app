import 'package:flutter/material.dart';

void main() {
  runApp(points());
}

class points extends StatelessWidget {
  final List<int> userPoints = [
    100,
    150,
    200
  ]; // Replace with your actual points

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Points:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Column(
                children: userPoints.map((points) {
                  return Text(
                    '$points',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
