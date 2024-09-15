import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  final Color clr;
  final String? title;

  BackBtn({super.key, required this.clr, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: clr,
          ),
        ),
        SizedBox(width: 10),
        if (title != null)
          Text(
            title!,
            style: TextStyle(color: clr, fontSize: 18),
          ),
      ],
    );
  }
}
