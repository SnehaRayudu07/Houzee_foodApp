import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HomeCardsRecord extends FirestoreRecord {
  HomeCardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('homeCards');

  static Stream<HomeCardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HomeCardsRecord.fromSnapshot(s));

  static Future<HomeCardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HomeCardsRecord.fromSnapshot(s));

  static HomeCardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HomeCardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HomeCardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HomeCardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HomeCardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HomeCardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHomeCardsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class HomeCardsRecordDocumentEquality implements Equality<HomeCardsRecord> {
  const HomeCardsRecordDocumentEquality();

  @override
  bool equals(HomeCardsRecord? e1, HomeCardsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(HomeCardsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is HomeCardsRecord;
}
