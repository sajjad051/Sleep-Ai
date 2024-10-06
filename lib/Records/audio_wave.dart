import 'package:flutter/material.dart';
import 'dart:math';

class WaveProgressBar extends StatefulWidget {
  final double progressPercentage;
  final double width;
  final double height;
  final Color progressColor;
  final Color backgroundColor;

  WaveProgressBar({
    required this.progressPercentage,
    required this.width,
    required this.height,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  _WaveProgressBarState createState() => _WaveProgressBarState();
}

class _WaveProgressBarState extends State<WaveProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          color: widget.backgroundColor,
        ),
        ClipRect(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                size: Size(widget.width, widget.height),
                painter: WavePainter(
                  animationValue: _controller.value,
                  progressPercentage: widget.progressPercentage,
                  progressColor: widget.progressColor,
                ),
              );
            },
          ),
        ),
        Center(
          child: Text(
            '${widget.progressPercentage.toInt()}%',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue;
  final double progressPercentage;
  final Color progressColor;

  WavePainter({
    required this.animationValue,
    required this.progressPercentage,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint wavePaint = Paint()..color = progressColor.withOpacity(0.5);

    double waveHeight = size.height * 0.2;
    double baseHeight = size.height * (1 - progressPercentage / 100);

    Path wavePath = Path();
    for (double i = 0; i <= size.width; i++) {
      wavePath.lineTo(
        i,
        baseHeight +
            sin((i / size.width * 2 * pi) + (animationValue * 2 * pi)) *
                waveHeight,
      );
    }
    wavePath.lineTo(size.width, size.height);
    wavePath.lineTo(0, size.height);
    wavePath.close();

    canvas.drawPath(wavePath, wavePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
