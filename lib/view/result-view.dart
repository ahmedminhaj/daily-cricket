import 'package:flutter/material.dart';

class MatchResult extends StatefulWidget {
  const MatchResult({ Key key }) : super(key: key);

  @override
  _MatchResultState createState() => _MatchResultState();
}

class _MatchResultState extends State<MatchResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Match Result",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}