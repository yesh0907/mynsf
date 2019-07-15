import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/page_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNsf',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Raleway"
      ),
      home: MyHomeScreen(title: 'MyNSF'),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Center(
              child: Text(
                "MyNSF",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 54,
                ),
              )
            ),
          ),
          Expanded(
            child: PageSwiper()
          )
        ],
      )
    );
  }
}
