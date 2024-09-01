import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocialMediaButton extends StatelessWidget {

  final String icon;
  final VoidCallback onPressed;
  const SocialMediaButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  ClipOval(
      child: Material(
        color: Color(0xFF061339), // Button color
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.3), // Splash color
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              icon,
              height: 40,
              width: 40,
            ),
          ),
        ),
      ),
    );
  }
}
