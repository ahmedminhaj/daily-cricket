import 'package:flutter/material.dart';

class MatchFixture extends StatefulWidget {
  const MatchFixture({ Key key }) : super(key: key);

  @override
  _MatchFixtureState createState() => _MatchFixtureState();
}

class _MatchFixtureState extends State<MatchFixture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Match Fixture",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}