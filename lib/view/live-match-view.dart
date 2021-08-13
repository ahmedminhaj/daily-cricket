import 'package:daily_cricket/controller/match-controller.dart';
import 'package:daily_cricket/widgets/match-tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveMatch extends StatefulWidget {
  const LiveMatch({Key key}) : super(key: key);

  @override
  _LiveMatchState createState() => _LiveMatchState();
}

class _LiveMatchState extends State<LiveMatch> {
  final MatchController matchController = Get.put(MatchController());

  @override
  void initState() { 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            color: Colors.green[900],
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "INTERNATIONAL",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: matchController.matchList.length,
              itemBuilder: (context, i) {
                return MatchTile(matchController.matchList[i]);
              },
            ),
          ),
          // Container(
          //   color: Colors.green[900],
          //   width: MediaQuery.of(context).size.width,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8),
          //     child: Text(
          //       "DOMESTIC",
          //       style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     physics: AlwaysScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemCount: matchController.domesticMatches.length,
          //     itemBuilder: (context, i) {
          //       return MatchTile(matchController.domesticMatches[i]);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
