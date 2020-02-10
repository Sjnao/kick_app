enum Role {
  DEFENCE,
  OFFENCE
}

extension  RoleExtension on Role {

  String get name {
      switch (this) {
        case Role.DEFENCE:
          return 'Defensive Player';
        case Role.OFFENCE:
          return 'Offensive Player';
        default:
          return '';
      }
    }
}
