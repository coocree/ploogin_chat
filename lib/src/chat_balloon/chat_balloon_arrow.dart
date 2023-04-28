import 'package:flutter/material.dart';

class ChatBalloonArrow extends CustomPainter {
  final Color color;
  ChatBalloonArrow(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();

    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [color, color],
    );

    final paint = Paint()..shader = gradient.createShader(path.getBounds());

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}