import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class PurchasesRecord extends FirestoreRecord {
  PurchasesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "plan" field.
  Plan? _plan;
  Plan? get plan => _plan;
  bool hasPlan() => _plan != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "purchase_user" field.
  DocumentReference? _purchaseUser;
  DocumentReference? get purchaseUser => _purchaseUser;
  bool hasPurchaseUser() => _purchaseUser != null;

  // "target_tsunagari" field.
  DocumentReference? _targetTsunagari;
  DocumentReference? get targetTsunagari => _targetTsunagari;
  bool hasTargetTsunagari() => _targetTsunagari != null;

  // "is_use_option" field.
  bool? _isUseOption;
  bool get isUseOption => _isUseOption ?? false;
  bool hasIsUseOption() => _isUseOption != null;

  // "executor" field.
  String? _executor;
  String get executor => _executor ?? '';
  bool hasExecutor() => _executor != null;

  // "service_date" field.
  DateTime? _serviceDate;
  DateTime? get serviceDate => _serviceDate;
  bool hasServiceDate() => _serviceDate != null;

  // "service_status" field.
  ExecuteStatus? _serviceStatus;
  ExecuteStatus? get serviceStatus => _serviceStatus;
  bool hasServiceStatus() => _serviceStatus != null;

  // "target_month" field.
  DateTime? _targetMonth;
  DateTime? get targetMonth => _targetMonth;
  bool hasTargetMonth() => _targetMonth != null;

  void _initializeFields() {
    _plan = deserializeEnum<Plan>(snapshotData['plan']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _purchaseUser = snapshotData['purchase_user'] as DocumentReference?;
    _targetTsunagari = snapshotData['target_tsunagari'] as DocumentReference?;
    _isUseOption = snapshotData['is_use_option'] as bool?;
    _executor = snapshotData['executor'] as String?;
    _serviceDate = snapshotData['service_date'] as DateTime?;
    _serviceStatus =
        deserializeEnum<ExecuteStatus>(snapshotData['service_status']);
    _targetMonth = snapshotData['target_month'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Purchases');

  static Stream<PurchasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PurchasesRecord.fromSnapshot(s));

  static Future<PurchasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PurchasesRecord.fromSnapshot(s));

  static PurchasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PurchasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PurchasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PurchasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PurchasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PurchasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPurchasesRecordData({
  Plan? plan,
  DateTime? createdAt,
  DocumentReference? purchaseUser,
  DocumentReference? targetTsunagari,
  bool? isUseOption,
  String? executor,
  DateTime? serviceDate,
  ExecuteStatus? serviceStatus,
  DateTime? targetMonth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plan': plan,
      'created_at': createdAt,
      'purchase_user': purchaseUser,
      'target_tsunagari': targetTsunagari,
      'is_use_option': isUseOption,
      'executor': executor,
      'service_date': serviceDate,
      'service_status': serviceStatus,
      'target_month': targetMonth,
    }.withoutNulls,
  );

  return firestoreData;
}

class PurchasesRecordDocumentEquality implements Equality<PurchasesRecord> {
  const PurchasesRecordDocumentEquality();

  @override
  bool equals(PurchasesRecord? e1, PurchasesRecord? e2) {
    return e1?.plan == e2?.plan &&
        e1?.createdAt == e2?.createdAt &&
        e1?.purchaseUser == e2?.purchaseUser &&
        e1?.targetTsunagari == e2?.targetTsunagari &&
        e1?.isUseOption == e2?.isUseOption &&
        e1?.executor == e2?.executor &&
        e1?.serviceDate == e2?.serviceDate &&
        e1?.serviceStatus == e2?.serviceStatus &&
        e1?.targetMonth == e2?.targetMonth;
  }

  @override
  int hash(PurchasesRecord? e) => const ListEquality().hash([
        e?.plan,
        e?.createdAt,
        e?.purchaseUser,
        e?.targetTsunagari,
        e?.isUseOption,
        e?.executor,
        e?.serviceDate,
        e?.serviceStatus,
        e?.targetMonth
      ]);

  @override
  bool isValidKey(Object? o) => o is PurchasesRecord;
}
