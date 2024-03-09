// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MemorialOwnerStruct extends FFFirebaseStruct {
  MemorialOwnerStruct({
    String? familyName,
    String? firstName,
    String? familyNameKana,
    String? firstNameKana,
    String? prefecture,
    String? city,
    String? email,
    String? tel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _familyName = familyName,
        _firstName = firstName,
        _familyNameKana = familyNameKana,
        _firstNameKana = firstNameKana,
        _prefecture = prefecture,
        _city = city,
        _email = email,
        _tel = tel,
        super(firestoreUtilData);

  // "familyName" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  set familyName(String? val) => _familyName = val;
  bool hasFamilyName() => _familyName != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "familyNameKana" field.
  String? _familyNameKana;
  String get familyNameKana => _familyNameKana ?? '';
  set familyNameKana(String? val) => _familyNameKana = val;
  bool hasFamilyNameKana() => _familyNameKana != null;

  // "firstNameKana" field.
  String? _firstNameKana;
  String get firstNameKana => _firstNameKana ?? '';
  set firstNameKana(String? val) => _firstNameKana = val;
  bool hasFirstNameKana() => _firstNameKana != null;

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  set prefecture(String? val) => _prefecture = val;
  bool hasPrefecture() => _prefecture != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "tel" field.
  String? _tel;
  String get tel => _tel ?? '';
  set tel(String? val) => _tel = val;
  bool hasTel() => _tel != null;

  static MemorialOwnerStruct fromMap(Map<String, dynamic> data) =>
      MemorialOwnerStruct(
        familyName: data['familyName'] as String?,
        firstName: data['firstName'] as String?,
        familyNameKana: data['familyNameKana'] as String?,
        firstNameKana: data['firstNameKana'] as String?,
        prefecture: data['prefecture'] as String?,
        city: data['city'] as String?,
        email: data['email'] as String?,
        tel: data['tel'] as String?,
      );

  static MemorialOwnerStruct? maybeFromMap(dynamic data) => data is Map
      ? MemorialOwnerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'familyName': _familyName,
        'firstName': _firstName,
        'familyNameKana': _familyNameKana,
        'firstNameKana': _firstNameKana,
        'prefecture': _prefecture,
        'city': _city,
        'email': _email,
        'tel': _tel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'familyName': serializeParam(
          _familyName,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'familyNameKana': serializeParam(
          _familyNameKana,
          ParamType.String,
        ),
        'firstNameKana': serializeParam(
          _firstNameKana,
          ParamType.String,
        ),
        'prefecture': serializeParam(
          _prefecture,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'tel': serializeParam(
          _tel,
          ParamType.String,
        ),
      }.withoutNulls;

  static MemorialOwnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      MemorialOwnerStruct(
        familyName: deserializeParam(
          data['familyName'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        familyNameKana: deserializeParam(
          data['familyNameKana'],
          ParamType.String,
          false,
        ),
        firstNameKana: deserializeParam(
          data['firstNameKana'],
          ParamType.String,
          false,
        ),
        prefecture: deserializeParam(
          data['prefecture'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        tel: deserializeParam(
          data['tel'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MemorialOwnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MemorialOwnerStruct &&
        familyName == other.familyName &&
        firstName == other.firstName &&
        familyNameKana == other.familyNameKana &&
        firstNameKana == other.firstNameKana &&
        prefecture == other.prefecture &&
        city == other.city &&
        email == other.email &&
        tel == other.tel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        familyName,
        firstName,
        familyNameKana,
        firstNameKana,
        prefecture,
        city,
        email,
        tel
      ]);
}

MemorialOwnerStruct createMemorialOwnerStruct({
  String? familyName,
  String? firstName,
  String? familyNameKana,
  String? firstNameKana,
  String? prefecture,
  String? city,
  String? email,
  String? tel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MemorialOwnerStruct(
      familyName: familyName,
      firstName: firstName,
      familyNameKana: familyNameKana,
      firstNameKana: firstNameKana,
      prefecture: prefecture,
      city: city,
      email: email,
      tel: tel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MemorialOwnerStruct? updateMemorialOwnerStruct(
  MemorialOwnerStruct? memorialOwner, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    memorialOwner
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMemorialOwnerStructData(
  Map<String, dynamic> firestoreData,
  MemorialOwnerStruct? memorialOwner,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (memorialOwner == null) {
    return;
  }
  if (memorialOwner.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && memorialOwner.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final memorialOwnerData =
      getMemorialOwnerFirestoreData(memorialOwner, forFieldValue);
  final nestedData =
      memorialOwnerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = memorialOwner.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMemorialOwnerFirestoreData(
  MemorialOwnerStruct? memorialOwner, [
  bool forFieldValue = false,
]) {
  if (memorialOwner == null) {
    return {};
  }
  final firestoreData = mapToFirestore(memorialOwner.toMap());

  // Add any Firestore field values
  memorialOwner.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMemorialOwnerListFirestoreData(
  List<MemorialOwnerStruct>? memorialOwners,
) =>
    memorialOwners
        ?.map((e) => getMemorialOwnerFirestoreData(e, true))
        .toList() ??
    [];
