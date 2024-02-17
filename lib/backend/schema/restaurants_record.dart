import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "CooksRef" field.
  DocumentReference? _cooksRef;
  DocumentReference? get cooksRef => _cooksRef;
  bool hasCooksRef() => _cooksRef != null;

  // "AverageRating" field.
  double? _averageRating;
  double get averageRating => _averageRating ?? 0.0;
  bool hasAverageRating() => _averageRating != null;

  // "Rating" field.
  List<double>? _rating;
  List<double> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "RatingCount" field.
  int? _ratingCount;
  int get ratingCount => _ratingCount ?? 0;
  bool hasRatingCount() => _ratingCount != null;

  void _initializeFields() {
    _location = snapshotData['Location'] as String?;
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _image = snapshotData['Image'] as String?;
    _cooksRef = snapshotData['CooksRef'] as DocumentReference?;
    _averageRating = castToType<double>(snapshotData['AverageRating']);
    _rating = getDataList(snapshotData['Rating']);
    _ratingCount = castToType<int>(snapshotData['RatingCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? location,
  String? name,
  String? description,
  String? image,
  DocumentReference? cooksRef,
  double? averageRating,
  int? ratingCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Location': location,
      'Name': name,
      'Description': description,
      'Image': image,
      'CooksRef': cooksRef,
      'AverageRating': averageRating,
      'RatingCount': ratingCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.cooksRef == e2?.cooksRef &&
        e1?.averageRating == e2?.averageRating &&
        listEquality.equals(e1?.rating, e2?.rating) &&
        e1?.ratingCount == e2?.ratingCount;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash([
        e?.location,
        e?.name,
        e?.description,
        e?.image,
        e?.cooksRef,
        e?.averageRating,
        e?.rating,
        e?.ratingCount
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
