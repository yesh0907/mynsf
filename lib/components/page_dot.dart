import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageDot extends StatelessWidget {
  PageDot({this.filled=false});

  final bool filled;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: this.filled ? Colors.red[800] : Colors.white,
          border: Border.all(color: Colors.red[800], width: 3),
        ),
        margin: EdgeInsets.only(bottom: 10, right: 10),
        constraints: BoxConstraints(
          minWidth: 15,
          minHeight: 30
        ),
      )
    );
  }
}
