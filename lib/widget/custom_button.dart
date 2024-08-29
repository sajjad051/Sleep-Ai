import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color background;
  final Color shadowColor;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.height, required this.width, required this.text, required this.background, required this.shadowColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(
      left: 8, right: 8, bottom: 8, top: 8),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: background,
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(4, 4),
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
          highlightColor: Colors.transparent,
          onTap: onPressed,
          child: Center(
            child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.white
            ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
