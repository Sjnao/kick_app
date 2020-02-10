import 'package:flutter/material.dart';

enum Team {
  BLU,
  RED
}

extension  TeamExtension on Team {

  Color get color {
    switch (this) {
      case Team.BLU:
        return Colors.blueAccent;
      case Team.RED:
        return Colors.redAccent;
      default:
        return null;
    }
  }
  Color get othersColor {
    switch (this) {
      case Team.BLU:
        return Colors.redAccent;
      case Team.RED:
        return Colors.blueAccent;
      default:
        return null;
    }
  }

}

