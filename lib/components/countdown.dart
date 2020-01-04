import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'package:mynsf/components/indicator.dart';
import 'package:mynsf/models/days.dart';

class Countdown extends StatelessWidget {
  final Map<String, int> ordDate;

  Countdown({this.ordDate});

  Future<Days> _fetchDuration() async {
    final String day = ordDate['day'].toString();
    final String month = ordDate['month'].toString();
    final String year = ordDate['year'].toString();
    final response = await http.get("https://mynsf.yesh0907.now.sh/?d2=$day&m2=$month&y2=$year");

    if (response.statusCode == 200) {
      return Days.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to get days");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Days>(
        future: _fetchDuration(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            int days = int.parse(snapshot.data.days) - 1;
            int workingDays = int.parse(snapshot.data.workingDays) - 1;
            return  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Indicator(days: days),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      "Days to ORD",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    days.toString(),
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "Working Days",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    workingDays.toString(),
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                backgroundColor: Colors.red[800],
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red[200]),
                strokeWidth: 6.0,
              )
            )
          );
        });
  }
}
