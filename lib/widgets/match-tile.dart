import 'package:daily_cricket/model/match.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MatchTile extends StatefulWidget {
  final Item match;
  const MatchTile(this.match);

  @override
  _MatchTileState createState() => _MatchTileState();
}

class _MatchTileState extends State<MatchTile> {
  var notify = false;
  @override
  Widget build(BuildContext context) {
    final title = this.widget.match.subtitle +
        ", " +
        this.widget.match.competition.title +
        ", " +
        DateFormat.MMMEd().add_jm().format(this.widget.match.dateStart);
    var idx1 = widget.match.teama.scoresFull == ""
        ? 0
        : widget.match.teama.scoresFull.indexOf(" ");
    var idx2 = widget.match.teamb.scoresFull == ""
        ? 0
        : widget.match.teamb.scoresFull.indexOf(" ");
    final teamAScore = idx1 == 0
        ? widget.match.teama.scoresFull
        : widget.match.teama.scoresFull.substring(0, idx1);
    final teamBScore = idx2 == 0
        ? widget.match.teamb.scoresFull
        : widget.match.teamb.scoresFull.substring(0, idx2);
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              child: Text(
                                widget.match.teama.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Image.network(
                                widget.match.teama.logoUrl,
                              ),
                            ),
                            Text(
                              "VS",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[700],
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Image.network(
                                widget.match.teamb.logoUrl,
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                widget.match.teamb.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              child: Text(
                                teamAScore,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              widget.match.statusStr,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.green[400],
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                teamBScore,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: notify == true
                            ? Icon(
                                Icons.notifications_active_rounded,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.notifications_active_outlined,
                                color: Colors.grey,
                              ),
                        onPressed: () {
                          if (notify == true) {
                            setState(() {
                              notify = false;
                            });
                          } else {
                            setState(() {
                              notify = true;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
                child: Text(
                  widget.match.statusNote,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Divider(
                indent: 70.0,
                endIndent: 70.0,
                thickness: 1.3,
                color: Colors.grey[400])
          ],
        ),
      ),
    );
  }
}
