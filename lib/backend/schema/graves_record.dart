import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class GravesRecord extends FirestoreRecord {
  GravesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "location_latlng" field.
  LatLng? _locationLatlng;
  LatLng? get locationLatlng => _locationLatlng;
  bool hasLocationLatlng() => _locationLatlng != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "locations_ref" field.
  List<DocumentReference>? _locationsRef;
  List<DocumentReference> get locationsRef => _locationsRef ?? const [];
  bool hasLocationsRef() => _locationsRef != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "tsunagari_location_relations" field.
  List<TsunagariLocationStruct>? _tsunagariLocationRelations;
  List<TsunagariLocationStruct> get tsunagariLocationRelations =>
      _tsunagariLocationRelations ?? const [];
  bool hasTsunagariLocationRelations() => _tsunagariLocationRelations != null;

  void _initializeFields() {
    _location = snapshotData['location'] as String?;
    _locationLatlng = snapshotData['location_latlng'] as LatLng?;
    _name = snapshotData['name'] as String?;
    _locationsRef = getDataList(snapshotData['locations_ref']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _tsunagariLocationRelations = getStructList(
      snapshotData['tsunagari_location_relations'],
      TsunagariLocationStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Graves');

  static Stream<GravesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GravesRecord.fromSnapshot(s));

  static Future<GravesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GravesRecord.fromSnapshot(s));

  static GravesRecord fromSnapshot(DocumentSnapshot snapshot) => GravesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GravesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GravesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GravesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GravesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGravesRecordData({
  String? location,
  LatLng? locationLatlng,
  String? name,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'location_latlng': locationLatlng,
      'name': name,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class GravesRecordDocumentEquality implements Equality<GravesRecord> {
  const GravesRecordDocumentEquality();

  @override
  bool equals(GravesRecord? e1, GravesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.location == e2?.location &&
        e1?.locationLatlng == e2?.locationLatlng &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.locationsRef, e2?.locationsRef) &&
        e1?.createdBy == e2?.createdBy &&
        listEquality.equals(
            e1?.tsunagariLocationRelations, e2?.tsunagariLocationRelations);
  }

  @override
  int hash(GravesRecord? e) => const ListEquality().hash([
        e?.location,
        e?.locationLatlng,
        e?.name,
        e?.locationsRef,
        e?.createdBy,
        e?.tsunagariLocationRelations
      ]);

  @override
  bool isValidKey(Object? o) => o is GravesRecord;
}
