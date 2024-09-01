import 'package:flutter/material.dart';

class Scrollbtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const Scrollbtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 14, // Text size
            // fontWeight: FontWeight.bold, // Text weight
          ),
        ),
      ),
    );
  }
}