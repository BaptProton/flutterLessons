import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.text, required this.fontSize});

  final String  text;
  final double  fontSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color(0xff000000),
      color: Color(0x88818381),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize)
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              MyCard(text: "My Profile", fontSize: 24),
              MyCard(text: "Jean Quantum-Physics", fontSize: 18),
              MyCard(text: "Flutter developer", fontSize: 12)
            ],
          ),
        ),
      ),
    ),
  );
}