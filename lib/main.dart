import 'package:flutter/material.dart';
import 'package:guess_the_number/Pages/HomePage.dart';

void main() {
  runApp(GuessTheNumber());
}

class GuessTheNumber extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
