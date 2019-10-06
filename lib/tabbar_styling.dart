import 'package:flutter/material.dart';
import 'constants.dart';

class TabBarStyle extends StatelessWidget {
  final String text;

  TabBarStyle({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Text(
        text,
//        style: TextStyle(
//          color: Colors.white,
//        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: kLg,
      ),
    );
  }
}
