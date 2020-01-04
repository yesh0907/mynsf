import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, right: 10),
      child: IconButton(
        icon: Icon(Icons.settings),
        onPressed: () => Navigator.pushNamed(context, '/settings'),
        iconSize: 32,
        color: Colors.white,
      ),
    );
  }
}