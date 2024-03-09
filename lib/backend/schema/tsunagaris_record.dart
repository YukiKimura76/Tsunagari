import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TsunagarisRecord extends FirestoreRecord {
  TsunagarisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "familyName" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  bool hasFamilyName() => _familyName != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  void _initializeFields() {
    _familyName = snapshotData['familyName'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tsunagaris');

  static Stream<TsunagarisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TsunagarisRecord.fromSnapshot(s));

  static Future<TsunagarisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TsunagarisRecord.fromSnapshot(s));

  static TsunagarisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TsunagarisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TsunagarisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TsunagarisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TsunagarisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TsunagarisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTsunagarisRecordData({
  String? familyName,
  String? firstName,
  DateTime? birthdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'familyName': familyName,
      'firstName': firstName,
      'birthdate': birthdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TsunagarisRecordDocumentEquality implements Equality<TsunagarisRecord> {
  const TsunagarisRecordDocumentEquality();

  @override
  bool equals(TsunagarisRecord? e1, TsunagarisRecord? e2) {
    return e1?.familyName == e2?.familyName &&
        e1?.firstName == e2?.firstName &&
        e1?.birthdate == e2?.birthdate;
  }

  @override
  int hash(TsunagarisRecord? e) =>
      const ListEquality().hash([e?.familyName, e?.firstName, e?.birthdate]);

  @override
  bool isValidKey(Object? o) => o is TsunagarisRecord;
}
