import 'package:flutter/material.dart';

import '../constants.dart';

class BackgrounPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathLine = Path();
    var paintLine = Paint()
      ..color = const Color(0xff674a82)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5);

    pathLine.moveTo(0, 0);
    pathLine.lineTo(size.width, 0);
    pathLine.lineTo(size.width, size.height * 0.2);
    pathLine.cubicTo(
        size.width * 0.8, size.height * 0.35,
        size.width * 0.18, size.height * 0.25,
        size.width * 0.2, size.height * 0.55);
    pathLine.quadraticBezierTo(
        size.width * 0.15, size.height * 0.54,
        size.width * 0, size.height * 0.4);
    pathLine.lineTo(0, 0);

    pathLine.moveTo(size.width, size.height);
    pathLine.lineTo(size.width * 0.7, size.height);
    pathLine.cubicTo(
        size.width * 0.85, size.height * 0.95,
        size.width * 0.9, size.height * 0.85,
        size.width * 0.85, size.height * 0.8);
    pathLine.quadraticBezierTo(
        size.width, size.height * 0.85,
        size.width, size.height * 0.88);
    pathLine.lineTo(size.width, size.height);

    canvas.drawPath(pathLine, paintLine);

    var pathLineS = Path();
    var paintLineS = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 15.5);

    pathLineS.moveTo(size.width, size.height * 0.2);
    pathLineS.cubicTo(
        size.width * 0.83, size.height * 0.36,
        size.width * 0.18, size.height * 0.24,
        size.width * 0.19, size.height * 0.55);
    pathLineS.quadraticBezierTo(
        size.width * 0.14, size.height * 0.54,
        size.width * 0, size.height * 0.41);

    pathLineS.moveTo(size.width * 0.7, size.height);
    pathLineS.cubicTo(
        size.width * 0.85, size.height * 0.95,
        size.width * 0.94, size.height * 0.85,
        size.width * 0.85, size.height * 0.8);
    pathLineS.quadraticBezierTo(
        size.width * 0.97, size.height * 0.85,
        size.width, size.height * 0.88);

    canvas.drawPath(pathLineS, paintLineS);

    var path = Path();
    var paint = Paint()
      ..color = KVioletDark
      ..shader = const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [
            0.15,
            0.2,
            0.35,
            0.8,
            1
          ],
          colors: [
            KLavender,
            KVioletDark,
            Colors.black,
            KVioletDark,
            KLavender,


          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;


    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.2);
    path.cubicTo(
        size.width * 0.8, size.height * 0.35,
        size.width * 0.18, size.height * 0.25,
        size.width * 0.2, size.height * 0.55);
    path.quadraticBezierTo(
        size.width * 0.15, size.height * 0.54,
        size.width * 0, size.height * 0.4);
    path.lineTo(0, 0);

    path.moveTo(size.width, size.height);
    path.lineTo(size.width * 0.7, size.height);
    path.cubicTo(
        size.width * 0.85, size.height * 0.95,
        size.width * 0.9, size.height * 0.85,
        size.width * 0.85, size.height * 0.8);
    path.quadraticBezierTo(
        size.width, size.height * 0.85,
        size.width, size.height * 0.88);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
