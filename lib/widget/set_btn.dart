import 'package:flutter/material.dart';

class SetButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color background;
  final Color borderColor;
  final Color shadowColor;
  final VoidCallback onPressed;
  const SetButton({super.key, required this.height, required this.width, required this.text, required this.background, required this.shadowColor, required this.onPressed, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
          left: 8, right: 8, bottom: 6, top: 6),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            highlightColor: Colors.transparent,
            onTap: onPressed,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
