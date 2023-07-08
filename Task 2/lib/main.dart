import 'package:flutter/material.dart';
import 'package:iti_quiz_app/screen.dart';
import 'package:iti_quiz_app/screens/app.dart';
import 'package:iti_quiz_app/screens/home_screen.dart';

//import 'Screens/opening_screen.dart';

void main() {
  runApp(
      const OurQuizzApp()); // runApp fnction takes the root Widget that we choose to start with
}

// root widget must have : MaterialApp(android) widget or CupertinoApp(IOS) widget
class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}