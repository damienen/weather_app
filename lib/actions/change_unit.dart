class ChangeUnit {
  ChangeUnit();
}

class ChangeUnitSuccessful {
  const ChangeUnitSuccessful();
}

class ChangeUnitError {
  const ChangeUnitError(this.error);

  final dynamic error;
}
