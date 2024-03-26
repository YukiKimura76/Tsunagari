// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TsunagariLocationStruct extends FFFirebaseStruct {
  TsunagariLocationStruct({
    String? tsunagari,
    String? location,
    Plan? plan,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tsunagari = tsunagari,
        _location = location,
        _plan = plan,
        super(firestoreUtilData);

  // "tsunagari" field.
  String? _tsunagari;
  String get tsunagari => _tsunagari ?? '';
  set tsunagari(String? val) => _tsunagari = val;
  bool hasTsunagari() => _tsunagari != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "plan" field.
  Plan? _plan;
  Plan? get plan => _plan;
  set plan(Plan? val) => _plan = val;
  bool hasPlan() => _plan != null;

  static TsunagariLocationStruct fromMap(Map<String, dynamic> data) =>
      TsunagariLocationStruct(
        tsunagari: data['tsunagari'] as String?,
        location: data['location'] as String?,
        plan: deserializeEnum<Plan>(data['plan']),
      );

  static TsunagariLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? TsunagariLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tsunagari': _tsunagari,
        'location': _location,
        'plan': _plan?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tsunagari': serializeParam(
          _tsunagari,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'plan': serializeParam(
          _plan,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static TsunagariLocationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TsunagariLocationStruct(
        tsunagari: deserializeParam(
          data['tsunagari'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        plan: deserializeParam<Plan>(
          data['plan'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'TsunagariLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TsunagariLocationStruct &&
        tsunagari == other.tsunagari &&
        location == other.location &&
        plan == other.plan;
  }

  @override
  int get hashCode => const ListEquality().hash([tsunagari, location, plan]);
}

TsunagariLocationStruct createTsunagariLocationStruct({
  String? tsunagari,
  String? location,
  Plan? plan,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TsunagariLocationStruct(
      tsunagari: tsunagari,
      location: location,
      plan: plan,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TsunagariLocationStruct? updateTsunagariLocationStruct(
  TsunagariLocationStruct? tsunagariLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tsunagariLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTsunagariLocationStructData(
  Map<String, dynamic> firestoreData,
  TsunagariLocationStruct? tsunagariLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tsunagariLocation == null) {
    return;
  }
  if (tsunagariLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tsunagariLocation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tsunagariLocationData =
      getTsunagariLocationFirestoreData(tsunagariLocation, forFieldValue);
  final nestedData =
      tsunagariLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tsunagariLocation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTsunagariLocationFirestoreData(
  TsunagariLocationStruct? tsunagariLocation, [
  bool forFieldValue = false,
]) {
  if (tsunagariLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tsunagariLocation.toMap());

  // Add any Firestore field values
  tsunagariLocation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTsunagariLocationListFirestoreData(
  List<TsunagariLocationStruct>? tsunagariLocations,
) =>
    tsunagariLocations
        ?.map((e) => getTsunagariLocationFirestoreData(e, true))
        .toList() ??
    [];
