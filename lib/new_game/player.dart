import 'package:kick_app/new_game/role.dart';
import 'package:kick_app/new_game/team.dart';

class Player {

  Team team;
  Role role;
  String name;


  Player(this.team, this.role);

  @override
  String toString() {
    return 'Player{team: $team, role: $role, name: $name}';
  }


}