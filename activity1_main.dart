import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name & Roll Number',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Info'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name: Madhu',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10), // spacing between lines
              Text(
                'Roll No: 10211A0478',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
