import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserPostsRecord extends FirestoreRecord {
  UserPostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  DocumentReference? _displayName;
  DocumentReference? get displayName => _displayName;
  bool hasDisplayName() => _displayName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _caption = snapshotData['caption'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userPosts')
          : FirebaseFirestore.instance.collectionGroup('userPosts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userPosts').doc(id);

  static Stream<UserPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPostsRecord.fromSnapshot(s));

  static Future<UserPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPostsRecord.fromSnapshot(s));

  static UserPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPostsRecordData({
  DocumentReference? displayName,
  String? image,
  String? caption,
  DateTime? timestamp,
  String? name,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'image': image,
      'caption': caption,
      'timestamp': timestamp,
      'name': name,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPostsRecordDocumentEquality implements Equality<UserPostsRecord> {
  const UserPostsRecordDocumentEquality();

  @override
  bool equals(UserPostsRecord? e1, UserPostsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.image == e2?.image &&
        e1?.caption == e2?.caption &&
        e1?.timestamp == e2?.timestamp &&
        e1?.name == e2?.name &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UserPostsRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.image,
        e?.caption,
        e?.timestamp,
        e?.name,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UserPostsRecord;
}
