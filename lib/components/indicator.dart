import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Indicator extends StatelessWidget {
  final int days;
  final double totalDays = 365.0 * 2;

  Indicator({this.days});

  @override
  Widget build(BuildContext context) {
    double percentLeft = 1 - this.days / this.totalDays;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Text(
          "${(percentLeft * 100).toStringAsFixed(1)}%",
          style: TextStyle(fontSize: 52, fontWeight: FontWeight.w300),
        ),
        CustomPaint(
          size: new Size(150, 150),
          painter: _IndicatorPainter(percentLeft: percentLeft),
        ),
      ],
    );
  }
}

class _IndicatorPainter extends CustomPainter {
  final double percentLeft;
  _IndicatorPainter({this.percentLeft});

  @override
  void paint(Canvas canvas, Size size) {
    Paint totalCircle = new Paint()
      ..color = Colors.red[100]
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;
    Paint percentArc = new Paint()
      ..color = Colors.redAccent[400]
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    double dx = size.width / 2;
    double dy = 80;
    double r = 90;

    canvas.drawCircle(Offset(dx, dy), r, totalCircle);
    canvas.drawArc(new Rect.fromCircle(center: Offset(dx, dy), radius: r),
        math.pi, this.percentLeft * math.pi * 2, false, percentArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}