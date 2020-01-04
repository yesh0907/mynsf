import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mynsf/components/Header.dart';
import 'package:mynsf/components/Page.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10),
            child: BackButton(
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
            )
          ),
          Header(),
          Page(
            content: Text("Hello World"),
          ),
        ],
      )
    );
  }
}