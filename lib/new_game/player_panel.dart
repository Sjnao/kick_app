import 'package:flutter/material.dart';
import 'package:kick_app/new_game/team.dart';
import 'package:kick_app/new_game/role.dart';

class PlayerPanel extends StatefulWidget {
  final Team team;
  final Role role;
  final VoidCallback onGoal;
  final VoidCallback onOwnGoal;

  PlayerPanel({Key key, @required this.team, @required this.role, this.onGoal, this.onOwnGoal}): super(key:key);
  @override
  _PlayerPlaneState createState() => _PlayerPlaneState( team: this.team,  role: this.role);
}

class _PlayerPlaneState extends State<PlayerPanel> {
  String playerName;
  final Team team;
  final Role role;

  static const _kFontFam = 'KickApp';
  static const IconData soccer_ball =
  const IconData(0xf1e3, fontFamily: _kFontFam);

  _PlayerPlaneState({key, @required this.team, @required this.role});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: role.name,
                    fillColor: team.color,
                    filled: true),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => {widget.onOwnGoal()},
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                soccer_ball,
                                color: team.othersColor,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: GestureDetector(
                          onTap: () => {widget.onGoal()},
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                soccer_ball,
                                color: team.color,
                                size: 60,
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

}
