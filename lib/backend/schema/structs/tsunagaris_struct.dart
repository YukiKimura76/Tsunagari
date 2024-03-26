// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TsunagarisStruct extends FFFirebaseStruct {
  TsunagarisStruct({
    String? name,
    String? nakeKana,
    String? nickName,
    String? relation,
    DateTime? deathAnniversary,
    DateTime? birthDate,
    DateTime? createdAt,
    String? origin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _nakeKana = nakeKana,
        _nickName = nickName,
        _relation = relation,
        _deathAnniversary = deathAnniversary,
        _birthDate = birthDate,
        _createdAt = createdAt,
        _origin = origin,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nake_kana" field.
  String? _nakeKana;
  String get nakeKana => _nakeKana ?? '';
  set nakeKana(String? val) => _nakeKana = val;
  bool hasNakeKana() => _nakeKana != null;

  // "nick_name" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  set nickName(String? val) => _nickName = val;
  bool hasNickName() => _nickName != null;

  // "relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  set relation(String? val) => _relation = val;
  bool hasRelation() => _relation != null;

  // "death_anniversary" field.
  DateTime? _deathAnniversary;
  DateTime? get deathAnniversary => _deathAnniversary;
  set deathAnniversary(DateTime? val) => _deathAnniversary = val;
  bool hasDeathAnniversary() => _deathAnniversary != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  set birthDate(DateTime? val) => _birthDate = val;
  bool hasBirthDate() => _birthDate != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  set origin(String? val) => _origin = val;
  bool hasOrigin() => _origin != null;

  static TsunagarisStruct fromMap(Map<String, dynamic> data) =>
      TsunagarisStruct(
        name: data['name'] as String?,
        nakeKana: data['nake_kana'] as String?,
        nickName: data['nick_name'] as String?,
        relation: data['relation'] as String?,
        deathAnniversary: data['death_anniversary'] as DateTime?,
        birthDate: data['birth_date'] as DateTime?,
        createdAt: data['created_at'] as DateTime?,
        origin: data['origin'] as String?,
      );

  static TsunagarisStruct? maybeFromMap(dynamic data) => data is Map
      ? TsunagarisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'nake_kana': _nakeKana,
        'nick_name': _nickName,
        'relation': _relation,
        'death_anniversary': _deathAnniversary,
        'birth_date': _birthDate,
        'created_at': _createdAt,
        'origin': _origin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nake_kana': serializeParam(
          _nakeKana,
          ParamType.String,
        ),
        'nick_name': serializeParam(
          _nickName,
          ParamType.String,
        ),
        'relation': serializeParam(
          _relation,
          ParamType.String,
        ),
        'death_anniversary': serializeParam(
          _deathAnniversary,
          ParamType.DateTime,
        ),
        'birth_date': serializeParam(
          _birthDate,
          ParamType.DateTime,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'origin': serializeParam(
          _origin,
          ParamType.String,
        ),
      }.withoutNulls;

  static TsunagarisStruct fromSerializableMap(Map<String, dynamic> data) =>
      TsunagarisStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nakeKana: deserializeParam(
          data['nake_kana'],
          ParamType.String,
          false,
        ),
        nickName: deserializeParam(
          data['nick_name'],
          ParamType.String,
          false,
        ),
        relation: deserializeParam(
          data['relation'],
          ParamType.String,
          false,
        ),
        deathAnniversary: deserializeParam(
          data['death_anniversary'],
          ParamType.DateTime,
          false,
        ),
        birthDate: deserializeParam(
          data['birth_date'],
          ParamType.DateTime,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        origin: deserializeParam(
          data['origin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TsunagarisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TsunagarisStruct &&
        name == other.name &&
        nakeKana == other.nakeKana &&
        nickName == other.nickName &&
        relation == other.relation &&
        deathAnniversary == other.deathAnniversary &&
        birthDate == other.birthDate &&
        createdAt == other.createdAt &&
        origin == other.origin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        nakeKana,
        nickName,
        relation,
        deathAnniversary,
        birthDate,
        createdAt,
        origin
      ]);
}

TsunagarisStruct createTsunagarisStruct({
  String? name,
  String? nakeKana,
  String? nickName,
  String? relation,
  DateTime? deathAnniversary,
  DateTime? birthDate,
  DateTime? createdAt,
  String? origin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TsunagarisStruct(
      name: name,
      nakeKana: nakeKana,
      nickName: nickName,
      relation: relation,
      deathAnniversary: deathAnniversary,
      birthDate: birthDate,
      createdAt: createdAt,
      origin: origin,
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
