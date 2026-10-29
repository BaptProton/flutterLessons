import 'package:flutter/material.dart';

class PersonalText extends StatelessWidget {
  const PersonalText({
    super.key,
    required this.text,
    required this.fontSize,
  });

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: null,
      maxLines: 2,
      textAlign: .center,
      style: TextStyle(
        fontSize: fontSize,
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}