import 'package:flutter/material.dart';
import 'package:kick_app/new_game/player_panel.dart';
import 'package:kick_app/new_game/role.dart';
import 'package:kick_app/new_game/team.dart';

class NewGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {
  var _blue_score = 0;
  var _red_score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      PlayerPanel(team: Team.BLU, role: Role.DEFENCE, onGoal: () => setState(() => _blue_score++), onOwnGoal: () => setState(() => _red_score++)),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      PlayerPanel(team: Team.BLU, role: Role.OFFENCE, onGoal: () => setState(() => _blue_score++), onOwnGoal: () => setState(() => _red_score++)),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.undo),
                          color: Colors.white,
                          onPressed: () => {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, right: 130),
                          child: Row(children: <Widget>[
                            Text('$_blue_score',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                            Text("-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                            Text('$_red_score',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                          ]),
                        ),
                        IconButton(
                          icon: Icon(Icons.save),
                          color: Colors.white,
                          onPressed: () => {},
                        ),
                      ],
                    ))),
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      PlayerPanel(team: Team.RED, role: Role.DEFENCE, onGoal: () => setState(() => _red_score++), onOwnGoal: () => setState(() => _blue_score++)),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      PlayerPanel(team: Team.RED, role: Role.DEFENCE, onGoal: () => setState(() => _red_score++), onOwnGoal: () => setState(() => _blue_score++)),
                    ],
                  ),
                ))
          ],
        ));
  }
}
