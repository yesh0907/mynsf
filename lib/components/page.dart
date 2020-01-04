import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page extends StatelessWidget {
  final Widget content;
  
  Page({this.content});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(64),
            topRight: const Radius.circular(64),
          ),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        child: this.content
      )
    )
   ;
  }
}