import 'package:flutter/material.dart';
import 'package:surveyapp/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Home(),
      theme: ThemeData(
        accentColor: Colors.grey[900],
        primaryColor: Colors.grey[900],
        buttonColor: Colors.grey[900],
      ),
    );
  }
}
