import 'package:collection/collection.dart';

enum Relationship {
  GrandFatherOrMother,
  GreatGrandFatherOrMotherOnMotherSide,
  GreatGrandFatherOrMotherOnFatherSide,
  Parent,
  AncleOrAunt,
  NephewOrNiece,
  GrandChild,
  GreatGrandChild,
  Cousin,
  HusbandOrWife,
  Friends,
  SonOrDaughter,
  Pet,
}

enum Plan {
  plan1,
  plan2,
  plan3,
}

enum ExecuteStatus {
  preSearchingExecutor,
  searchingExecutor,
  matched,
  preExecution,
  executed,
  cancelled,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Relationship):
      return Relationship.values.deserialize(value) as T?;
    case (Plan):
      return Plan.values.deserialize(value) as T?;
    case (ExecuteStatus):
      return ExecuteStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
