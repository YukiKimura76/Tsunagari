import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class TsunagarisRecord extends FirestoreRecord {
  TsunagarisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "name_kana" field.
  String? _nameKana;
  String get nameKana => _nameKana ?? '';
  bool hasNameKana() => _nameKana != null;

  // "nick_name" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  bool hasNickName() => _nickName != null;

  // "relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  bool hasRelation() => _relation != null;

  // "death_anniversary" field.
  DateTime? _deathAnniversary;
  DateTime? get deathAnniversary => _deathAnniversary;
  bool hasDeathAnniversary() => _deathAnniversary != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "plan" field.
  Plan? _plan;
  Plan? get plan => _plan;
  bool hasPlan() => _plan != null;

  // "target_purchases" field.
  List<DocumentReference>? _targetPurchases;
  List<DocumentReference> get targetPurchases => _targetPurchases ?? const [];
  bool hasTargetPurchases() => _targetPurchases != null;

  // "grave_ref" field.
  DocumentReference? _graveRef;
  DocumentReference? get graveRef => _graveRef;
  bool hasGraveRef() => _graveRef != null;

  // "target_months" field.
  List<DateTime>? _targetMonths;
  List<DateTime> get targetMonths => _targetMonths ?? const [];
  bool hasTargetMonths() => _targetMonths != null;

  // "target_option_months" field.
  List<DateTime>? _targetOptionMonths;
  List<DateTime> get targetOptionMonths => _targetOptionMonths ?? const [];
  bool hasTargetOptionMonths() => _targetOptionMonths != null;

  // "icon_image" field.
  String? _iconImage;
  String get iconImage => _iconImage ?? '';
  bool hasIconImage() => _iconImage != null;

  // "back_image" field.
  String? _backImage;
  String get backImage => _backImage ?? '';
  bool hasBackImage() => _backImage != null;

  // "location_ref" field.
  DocumentReference? _locationRef;
  DocumentReference? get locationRef => _locationRef;
  bool hasLocationRef() => _locationRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _nameKana = snapshotData['name_kana'] as String?;
    _nickName = snapshotData['nick_name'] as String?;
    _relation = snapshotData['relation'] as String?;
    _deathAnniversary = snapshotData['death_anniversary'] as DateTime?;
    _birthDate = snapshotData['birth_date'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _origin = snapshotData['origin'] as String?;
    _plan = deserializeEnum<Plan>(snapshotData['plan']);
    _targetPurchases = getDataList(snapshotData['target_purchases']);
    _graveRef = snapshotData['grave_ref'] as DocumentReference?;
    _targetMonths = getDataList(snapshotData['target_months']);
    _targetOptionMonths = getDataList(snapshotData['target_option_months']);
    _iconImage = snapshotData['icon_image'] as String?;
    _backImage = snapshotData['back_image'] as String?;
    _locationRef = snapshotData['location_ref'] as DocumentReference?;
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
  String? name,
  String? nameKana,
  String? nickName,
  String? relation,
  DateTime? deathAnniversary,
  DateTime? birthDate,
  DateTime? createdAt,
  String? origin,
  Plan? plan,
  DocumentReference? graveRef,
  String? iconImage,
  String? backImage,
  DocumentReference? locationRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'name_kana': nameKana,
      'nick_name': nickName,
      'relation': relation,
      'death_anniversary': deathAnniversary,
      'birth_date': birthDate,
      'created_at': createdAt,
      'origin': origin,
      'plan': plan,
      'grave_ref': graveRef,
      'icon_image': iconImage,
      'back_image': backImage,
      'location_ref': locationRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TsunagarisRecordDocumentEquality implements Equality<TsunagarisRecord> {
  const TsunagarisRecordDocumentEquality();

  @override
  bool equals(TsunagarisRecord? e1, TsunagarisRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.nameKana == e2?.nameKana &&
        e1?.nickName == e2?.nickName &&
        e1?.relation == e2?.relation &&
        e1?.deathAnniversary == e2?.deathAnniversary &&
        e1?.birthDate == e2?.birthDate &&
        e1?.createdAt == e2?.createdAt &&
        e1?.origin == e2?.origin &&
        e1?.plan == e2?.plan &&
        listEquality.equals(e1?.targetPurchases, e2?.targetPurchases) &&
        e1?.graveRef == e2?.graveRef &&
        listEquality.equals(e1?.targetMonths, e2?.targetMonths) &&
        listEquality.equals(e1?.targetOptionMonths, e2?.targetOptionMonths) &&
        e1?.iconImage == e2?.iconImage &&
        e1?.backImage == e2?.backImage &&
        e1?.locationRef == e2?.locationRef;
  }

  @override
  int hash(TsunagarisRecord? e) => const ListEquality().hash([
        e?.name,
        e?.nameKana,
        e?.nickName,
        e?.relation,
        e?.deathAnniversary,
        e?.birthDate,
        e?.createdAt,
        e?.origin,
        e?.plan,
        e?.targetPurchases,
        e?.graveRef,
        e?.targetMonths,
        e?.targetOptionMonths,
        e?.iconImage,
        e?.backImage,
        e?.locationRef
      ]);

  @override
  bool isValidKey(Object? o) => o is TsunagarisRecord;
}
