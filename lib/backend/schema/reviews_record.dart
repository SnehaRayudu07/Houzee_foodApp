import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewInput" field.
  String? _reviewInput;
  String get reviewInput => _reviewInput ?? '';
  bool hasReviewInput() => _reviewInput != null;

  // "RatingGiven" field.
  double? _ratingGiven;
  double get ratingGiven => _ratingGiven ?? 0.0;
  bool hasRatingGiven() => _ratingGiven != null;

  // "restaurantref" field.
  DocumentReference? _restaurantref;
  DocumentReference? get restaurantref => _restaurantref;
  bool hasRestaurantref() => _restaurantref != null;

  // "reviewImage" field.
  String? _reviewImage;
  String get reviewImage => _reviewImage ?? '';
  bool hasReviewImage() => _reviewImage != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _reviewInput = snapshotData['reviewInput'] as String?;
    _ratingGiven = castToType<double>(snapshotData['RatingGiven']);
    _restaurantref = snapshotData['restaurantref'] as DocumentReference?;
    _reviewImage = snapshotData['reviewImage'] as String?;
    _user = snapshotData['User'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userName = snapshotData['userName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reviews')
          : FirebaseFirestore.instance.collectionGroup('reviews');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('reviews').doc(id);

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviewInput,
  double? ratingGiven,
  DocumentReference? restaurantref,
  String? reviewImage,
  DocumentReference? user,
  DateTime? timestamp,
  String? userName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewInput': reviewInput,
      'RatingGiven': ratingGiven,
      'restaurantref': restaurantref,
      'reviewImage': reviewImage,
      'User': user,
      'timestamp': timestamp,
      'userName': userName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewInput == e2?.reviewInput &&
        e1?.ratingGiven == e2?.ratingGiven &&
        e1?.restaurantref == e2?.restaurantref &&
        e1?.reviewImage == e2?.reviewImage &&
        e1?.user == e2?.user &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userName == e2?.userName;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviewInput,
        e?.ratingGiven,
        e?.restaurantref,
        e?.reviewImage,
        e?.user,
        e?.timestamp,
        e?.userName
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
