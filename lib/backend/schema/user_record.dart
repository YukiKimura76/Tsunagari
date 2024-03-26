import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "is_complete_info" field.
  bool? _isCompleteInfo;
  bool get isCompleteInfo => _isCompleteInfo ?? false;
  bool hasIsCompleteInfo() => _isCompleteInfo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "name_kana" field.
  String? _nameKana;
  String get nameKana => _nameKana ?? '';
  bool hasNameKana() => _nameKana != null;

  // "post_code" field.
  String? _postCode;
  String get postCode => _postCode ?? '';
  bool hasPostCode() => _postCode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "tsunagaris" field.
  List<DocumentReference>? _tsunagaris;
  List<DocumentReference> get tsunagaris => _tsunagaris ?? const [];
  bool hasTsunagaris() => _tsunagaris != null;

  // "graves" field.
  List<DocumentReference>? _graves;
  List<DocumentReference> get graves => _graves ?? const [];
  bool hasGraves() => _graves != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isCompleteInfo = snapshotData['is_complete_info'] as bool?;
    _name = snapshotData['name'] as String?;
    _nameKana = snapshotData['name_kana'] as String?;
    _postCode = snapshotData['post_code'] as String?;
    _address = snapshotData['address'] as String?;
    _tsunagaris = getDataList(snapshotData['tsunagaris']);
    _graves = getDataList(snapshotData['graves']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isCompleteInfo,
  String? name,
  String? nameKana,
  String? postCode,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'is_complete_info': isCompleteInfo,
      'name': name,
      'name_kana': nameKana,
      'post_code': postCode,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isCompleteInfo == e2?.isCompleteInfo &&
        e1?.name == e2?.name &&
        e1?.nameKana == e2?.nameKana &&
        e1?.postCode == e2?.postCode &&
        e1?.address == e2?.address &&
        listEquality.equals(e1?.tsunagaris, e2?.tsunagaris) &&
        listEquality.equals(e1?.graves, e2?.graves);
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isCompleteInfo,
        e?.name,
        e?.nameKana,
        e?.postCode,
        e?.address,
        e?.tsunagaris,
        e?.graves
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
