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
    default:
      return null;
  }
}
