import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Responsive UI Example')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Switch between column or row based on screen width
          bool isWide = constraints.maxWidth > 600;

          return Center(
            child: Container(
              padding: EdgeInsets.all(16),
              constraints: BoxConstraints(maxWidth: 700),
              child: isWide
                  ? Row(
                      children: _buildProfileContent(),
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: _buildProfileContent(),
                    ),
            ),
          );
        },
      ),
    );
  }

  // Reusable content for row/column
  List<Widget> _buildProfileContent() {
    return [
      CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/images/demo.jpg'),
      ),
      SizedBox(width: 20, height: 20),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Madhu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Roll No: 10211A0478',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Department: Information Technology',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ];
  }
}
