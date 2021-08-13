import 'package:daily_cricket/view/fixture-view.dart';
import 'package:daily_cricket/view/live-match-view.dart';
import 'package:daily_cricket/view/result-view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            child: Image(
              image: AssetImage("assets/dailyCricket.png"),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFEA200),
                    Color(0xFFD45D05),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: TabBar(
                controller: tabController,
                isScrollable: false,
                unselectedLabelColor: Color(0xFF6A0C00),
                labelColor: const Color(0xFFE1CF85),
                indicatorWeight: 0.1,
                indicatorColor: Color(0xFFE1CF85),
                tabs: [
                  Tab(
                    child: Text(
                      "LIVE",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "FIXTURE",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "RESULT",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: TabBarView(
                controller: tabController,
                children: [
                  LiveMatch(),
                  MatchFixture(),
                  MatchResult(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
