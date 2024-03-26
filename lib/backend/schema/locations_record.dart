import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LocationsRecord extends FirestoreRecord {
  LocationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "tsunagaris" field.
  List<DocumentReference>? _tsunagaris;
  List<DocumentReference> get tsunagaris => _tsunagaris ?? const [];
  bool hasTsunagaris() => _tsunagaris != null;

  // "location_number" field.
  String? _locationNumber;
  String get locationNumber => _locationNumber ?? '';
  bool hasLocationNumber() => _locationNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _tsunagaris = getDataList(snapshotData['tsunagaris']);
    _locationNumber = snapshotData['location_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsRecord.fromSnapshot(s));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsRecord.fromSnapshot(s));

  static LocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsRecordData({
  String? name,
  DateTime? createdAt,
  DocumentReference? createdBy,
  String? locationNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'created_at': createdAt,
      'created_by': createdBy,
      'location_number': locationNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsRecordDocumentEquality implements Equality<LocationsRecord> {
  const LocationsRecordDocumentEquality();

  @override
  bool equals(LocationsRecord? e1, LocationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy &&
        listEquality.equals(e1?.tsunagaris, e2?.tsunagaris) &&
        e1?.locationNumber == e2?.locationNumber;
  }

  @override
  int hash(LocationsRecord? e) => const ListEquality().hash(
      [e?.name, e?.createdAt, e?.createdBy, e?.tsunagaris, e?.locationNumber]);

  @override
  bool isValidKey(Object? o) => o is LocationsRecord;
}
