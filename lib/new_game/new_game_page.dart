import 'package:flutter/material.dart';
import 'package:kick_app/new_game/goal.dart';
import 'package:kick_app/new_game/player.dart';
import 'package:kick_app/new_game/player_panel.dart';
import 'package:kick_app/new_game/role.dart';
import 'package:kick_app/new_game/team.dart';

class NewGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {
  var _bluScore = 0;
  var _redScore = 0;
  Player blueDef = Player(Team.BLU, Role.DEFENCE);
  Player blueOf = Player(Team.BLU, Role.OFFENCE);
  Player redDef = Player(Team.RED, Role.DEFENCE);
  Player redOf = Player(Team.RED, Role.OFFENCE);
  var events = new List();

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
                      PlayerPanel(
                          player: blueDef,
                          onGoal: (goal) => _handleGoal(goal)),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      PlayerPanel(
                          player: blueOf,
                          onGoal: (goal) => _handleGoal(goal)),
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
                          onPressed: () {
                            events.removeLast();
                            _updateScore();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, right: 130),
                          child: Row(children: <Widget>[
                            Text('$_bluScore',
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
                            Text('$_redScore',
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
                      PlayerPanel(
                          player: redDef, onGoal: (goal) => _handleGoal(goal)),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      PlayerPanel(
                          player: redOf,
                          onGoal: (goal) => _handleGoal(goal)),
                    ],
                  ),
                ))
          ],
        ));
  }

  void _handleGoal(Goal goal) {
    events.add(goal);
    _updateScore();
  }

  void _updateScore () {
    _bluScore = 0;
    _redScore = 0;
    for(final event in events){
      if (event.player.team == Team.RED) {
        if (event.isOwnGoal) {
          setState(() => (_bluScore++));
        } else {
          setState(() => (_redScore++));
        }
      } else {
        if (event.isOwnGoal) {
          setState(() => (_redScore++));
        } else {
          setState(() => (_bluScore++));
        }
      }
    }
  }
}
