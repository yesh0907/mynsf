import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/page_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNSF',
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30, right: 10),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("change screen");
              },
              iconSize: 32,
              color: Colors.white,
            ),
          ),
          Container(
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
          ),
          Expanded(
            child: PageSwiper()
          )
        ],
      )
    );
  }
}
