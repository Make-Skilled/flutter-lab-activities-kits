import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Container Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image in Container'),
        ),
        body: Center(
          child: Container(
            width: 1000,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue, width: 2),
              image: DecorationImage(
                image: NetworkImage('https://myhr.makeskilled.com/static/images/logoms.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
