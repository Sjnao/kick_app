import 'package:kick_app/new_game/player.dart';

class Goal {
  bool isOwnGoal;
  Player player;
  DateTime scoredAt;

  Goal(this.isOwnGoal, this.player, this.scoredAt);

  @override
  String toString() {
    return 'Goal{player: $player, scoredAt: $scoredAt}';
  }


}

