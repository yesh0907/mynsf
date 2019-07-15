import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynsf/components/countdown.dart';
import 'package:mynsf/components/page.dart';

class PageSwiper extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: <Widget>[
        Page(
          currPage: 1,
          content: Countdown(ordDate: {"day": 31, "month": 7, "year": 2020}),
        ),
        Page(currPage: 2, content: Text("2")),
        Page(currPage: 3, content: Text("3")),
      ],
    );
  }
}
