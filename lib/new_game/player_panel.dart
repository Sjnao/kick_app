import 'package:flutter/material.dart';
import 'package:kick_app/new_game/player.dart';
import 'package:kick_app/new_game/role.dart';
import 'package:kick_app/new_game/team.dart';
import 'package:kick_app/new_game/goal.dart';

class PlayerPanel extends StatefulWidget {

  final Player player;
  final ValueChanged<Goal> onGoal;

  PlayerPanel({Key key,@required this.player, this.onGoal}): super(key:key);
  @override
  _PlayerPlaneState createState() => _PlayerPlaneState( player:this.player);
}

class _PlayerPlaneState extends State<PlayerPanel> {
  final Player player;

  static const _kFontFam = 'KickApp';
  static const IconData soccer_ball =
  const IconData(0xf1e3, fontFamily: _kFontFam);

  _PlayerPlaneState({key, @required this.player});

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
                    hintText:player.role.name,
                    fillColor:  player.team.color,
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
                          onTap: () => {widget.onGoal(Goal(true, player, DateTime.now()))},
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                soccer_ball,
                                color: player.team.othersColor,
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
                          onTap: () => {widget.onGoal(Goal(false, player, DateTime.now()))},
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                soccer_ball,
                                color: player.team.color,
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
