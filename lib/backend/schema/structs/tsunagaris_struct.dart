// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TsunagarisStruct extends FFFirebaseStruct {
  TsunagarisStruct({
    String? familyName,
    String? firstName,
    String? nickName,
    DateTime? remembranceDate,
    String? dispOptionForRemembranceDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _familyName = familyName,
        _firstName = firstName,
        _nickName = nickName,
        _remembranceDate = remembranceDate,
        _dispOptionForRemembranceDate = dispOptionForRemembranceDate,
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

  // "nickName" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  set nickName(String? val) => _nickName = val;
  bool hasNickName() => _nickName != null;

  // "remembranceDate" field.
  DateTime? _remembranceDate;
  DateTime? get remembranceDate => _remembranceDate;
  set remembranceDate(DateTime? val) => _remembranceDate = val;
  bool hasRemembranceDate() => _remembranceDate != null;

  // "dispOptionForRemembranceDate" field.
  String? _dispOptionForRemembranceDate;
  String get dispOptionForRemembranceDate =>
      _dispOptionForRemembranceDate ?? '';
  set dispOptionForRemembranceDate(String? val) =>
      _dispOptionForRemembranceDate = val;
  bool hasDispOptionForRemembranceDate() =>
      _dispOptionForRemembranceDate != null;

  static TsunagarisStruct fromMap(Map<String, dynamic> data) =>
      TsunagarisStruct(
        familyName: data['familyName'] as String?,
        firstName: data['firstName'] as String?,
        nickName: data['nickName'] as String?,
        remembranceDate: data['remembranceDate'] as DateTime?,
        dispOptionForRemembranceDate:
            data['dispOptionForRemembranceDate'] as String?,
      );

  static TsunagarisStruct? maybeFromMap(dynamic data) => data is Map
      ? TsunagarisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'familyName': _familyName,
        'firstName': _firstName,
        'nickName': _nickName,
        'remembranceDate': _remembranceDate,
        'dispOptionForRemembranceDate': _dispOptionForRemembranceDate,
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
        'nickName': serializeParam(
          _nickName,
          ParamType.String,
        ),
        'remembranceDate': serializeParam(
          _remembranceDate,
          ParamType.DateTime,
        ),
        'dispOptionForRemembranceDate': serializeParam(
          _dispOptionForRemembranceDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static TsunagarisStruct fromSerializableMap(Map<String, dynamic> data) =>
      TsunagarisStruct(
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
        nickName: deserializeParam(
          data['nickName'],
          ParamType.String,
          false,
        ),
        remembranceDate: deserializeParam(
          data['remembranceDate'],
          ParamType.DateTime,
          false,
        ),
        dispOptionForRemembranceDate: deserializeParam(
          data['dispOptionForRemembranceDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TsunagarisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TsunagarisStruct &&
        familyName == other.familyName &&
        firstName == other.firstName &&
        nickName == other.nickName &&
        remembranceDate == other.remembranceDate &&
        dispOptionForRemembranceDate == other.dispOptionForRemembranceDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        familyName,
        firstName,
        nickName,
        remembranceDate,
        dispOptionForRemembranceDate
      ]);
}

TsunagarisStruct createTsunagarisStruct({
  String? familyName,
  String? firstName,
  String? nickName,
  DateTime? remembranceDate,
  String? dispOptionForRemembranceDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TsunagarisStruct(
      familyName: familyName,
      firstName: firstName,
      nickName: nickName,
      remembranceDate: remembranceDate,
      dispOptionForRemembranceDate: dispOptionForRemembranceDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TsunagarisStruct? updateTsunagarisStruct(
  TsunagarisStruct? tsunagaris, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tsunagaris
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTsunagarisStructData(
  Map<String, dynamic> firestoreData,
  TsunagarisStruct? tsunagaris,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tsunagaris == null) {
    return;
  }
  if (tsunagaris.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tsunagaris.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tsunagarisData = getTsunagarisFirestoreData(tsunagaris, forFieldValue);
  final nestedData = tsunagarisData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tsunagaris.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTsunagarisFirestoreData(
  TsunagarisStruct? tsunagaris, [
  bool forFieldValue = false,
]) {
  if (tsunagaris == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tsunagaris.toMap());

  // Add any Firestore field values
  tsunagaris.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTsunagarisListFirestoreData(
  List<TsunagarisStruct>? tsunagariss,
) =>
    tsunagariss?.map((e) => getTsunagarisFirestoreData(e, true)).toList() ?? [];
