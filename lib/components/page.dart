import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynsf/components/page_dot.dart';

class Page extends StatelessWidget {
  final int currPage;
  final Widget content;
  
  Page({this.currPage, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(64),
          topRight: const Radius.circular(64),
        ),
        color: Colors.white,
      ),
      child: Column(
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          PageDots(currIdx: this.currPage),
          this.content
        ],
      ),
    );
  }
}

class PageDots extends StatelessWidget {
  PageDots({this.currIdx});

  final int currIdx;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (i) => PageDot(filled: (i+1 == this.currIdx)))
    );
  }
}