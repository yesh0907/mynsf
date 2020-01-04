import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mynsf/screens/HomeScreen.dart';
import 'package:mynsf/screens/SettingsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNSF',
      theme: ThemeData(
        backgroundColor: Colors.red,
        primarySwatch: Colors.red,
        fontFamily: "Raleway"
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen()
      }
    );
  }
}


