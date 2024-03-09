// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GraveStruct extends FFFirebaseStruct {
  GraveStruct({
    String? graveYardName,
    String? graveLocationInfo,
    MemorialOwnerStruct? memorialOwner,
    List<TsunagarisStruct>? tsunagari,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _graveYardName = graveYardName,
        _graveLocationInfo = graveLocationInfo,
        _memorialOwner = memorialOwner,
        _tsunagari = tsunagari,
        super(firestoreUtilData);

  // "graveYardName" field.
  String? _graveYardName;
  String get graveYardName => _graveYardName ?? '';
  set graveYardName(String? val) => _graveYardName = val;
  bool hasGraveYardName() => _graveYardName != null;

  // "graveLocationInfo" field.
  String? _graveLocationInfo;
  String get graveLocationInfo => _graveLocationInfo ?? '';
  set graveLocationInfo(String? val) => _graveLocationInfo = val;
  bool hasGraveLocationInfo() => _graveLocationInfo != null;

  // "MemorialOwner" field.
  MemorialOwnerStruct? _memorialOwner;
  MemorialOwnerStruct get memorialOwner =>
      _memorialOwner ?? MemorialOwnerStruct();
  set memorialOwner(MemorialOwnerStruct? val) => _memorialOwner = val;
  void updateMemorialOwner(Function(MemorialOwnerStruct) updateFn) =>
      updateFn(_memorialOwner ??= MemorialOwnerStruct());
  bool hasMemorialOwner() => _memorialOwner != null;

  // "Tsunagari" field.
  List<TsunagarisStruct>? _tsunagari;
  List<TsunagarisStruct> get tsunagari => _tsunagari ?? const [];
  set tsunagari(List<TsunagarisStruct>? val) => _tsunagari = val;
  void updateTsunagari(Function(List<TsunagarisStruct>) updateFn) =>
      updateFn(_tsunagari ??= []);
  bool hasTsunagari() => _tsunagari != null;

  static GraveStruct fromMap(Map<String, dynamic> data) => GraveStruct(
        graveYardName: data['graveYardName'] as String?,
        graveLocationInfo: data['graveLocationInfo'] as String?,
        memorialOwner: MemorialOwnerStruct.maybeFromMap(data['MemorialOwner']),
        tsunagari: getStructList(
          data['Tsunagari'],
          TsunagarisStruct.fromMap,
        ),
      );

  static GraveStruct? maybeFromMap(dynamic data) =>
      data is Map ? GraveStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'graveYardName': _graveYardName,
        'graveLocationInfo': _graveLocationInfo,
        'MemorialOwner': _memorialOwner?.toMap(),
        'Tsunagari': _tsunagari?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'graveYardName': serializeParam(
          _graveYardName,
          ParamType.String,
        ),
        'graveLocationInfo': serializeParam(
          _graveLocationInfo,
          ParamType.String,
        ),
        'MemorialOwner': serializeParam(
          _memorialOwner,
          ParamType.DataStruct,
        ),
        'Tsunagari': serializeParam(
          _tsunagari,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static GraveStruct fromSerializableMap(Map<String, dynamic> data) =>
      GraveStruct(
        graveYardName: deserializeParam(
          data['graveYardName'],
          ParamType.String,
          false,
        ),
        graveLocationInfo: deserializeParam(
          data['graveLocationInfo'],
          ParamType.String,
          false,
        ),
        memorialOwner: deserializeStructParam(
          data['MemorialOwner'],
          ParamType.DataStruct,
          false,
          structBuilder: MemorialOwnerStruct.fromSerializableMap,
        ),
        tsunagari: deserializeStructParam<TsunagarisStruct>(
          data['Tsunagari'],
          ParamType.DataStruct,
          true,
          structBuilder: TsunagarisStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GraveStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GraveStruct &&
        graveYardName == other.graveYardName &&
        graveLocationInfo == other.graveLocationInfo &&
        memorialOwner == other.memorialOwner &&
        listEquality.equals(tsunagari, other.tsunagari);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([graveYardName, graveLocationInfo, memorialOwner, tsunagari]);
}

GraveStruct createGraveStruct({
  String? graveYardName,
  String? graveLocationInfo,
  MemorialOwnerStruct? memorialOwner,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GraveStruct(
      graveYardName: graveYardName,
      graveLocationInfo: graveLocationInfo,
      memorialOwner:
          memorialOwner ?? (clearUnsetFields ? MemorialOwnerStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GraveStruct? updateGraveStruct(
  GraveStruct? grave, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    grave
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGraveStructData(
  Map<String, dynamic> firestoreData,
  GraveStruct? grave,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (grave == null) {
    return;
  }
  if (grave.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && grave.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final graveData = getGraveFirestoreData(grave, forFieldValue);
  final nestedData = graveData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = grave.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGraveFirestoreData(
  GraveStruct? grave, [
  bool forFieldValue = false,
]) {
  if (grave == null) {
    return {};
  }
  final firestoreData = mapToFirestore(grave.toMap());

  // Handle nested data for "MemorialOwner" field.
  addMemorialOwnerStructData(
    firestoreData,
    grave.hasMemorialOwner() ? grave.memorialOwner : null,
    'MemorialOwner',
    forFieldValue,
  );

  // Add any Firestore field values
  grave.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGraveListFirestoreData(
  List<GraveStruct>? graves,
) =>
    graves?.map((e) => getGraveFirestoreData(e, true)).toList() ?? [];
