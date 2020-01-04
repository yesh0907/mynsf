import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              "Fuck N\$",
              style: TextStyle(
                color: Colors.white,
                fontSize: 54,
              ),
            )
          )
        ],
      )
    );
  }
}
