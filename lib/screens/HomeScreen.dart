import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mynsf/components/SettingsButton.dart';
import 'package:mynsf/components/Countdown.dart';
import 'package:mynsf/components/Header.dart';
import 'package:mynsf/components/Page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SettingsButton(),
          Header(),
          Page(
            content: Countdown(ordDate: {"day": 30, "month": 7, "year": 2020}),
          ),
        ],
      )
    );
  }
}