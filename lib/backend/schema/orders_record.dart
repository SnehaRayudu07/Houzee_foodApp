import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "orderItems" field.
  List<CartItemTypeStruct>? _orderItems;
  List<CartItemTypeStruct> get orderItems => _orderItems ?? const [];
  bool hasOrderItems() => _orderItems != null;

  // "orderID" field.
  int? _orderID;
  int get orderID => _orderID ?? 0;
  bool hasOrderID() => _orderID != null;

  // "orderPrice" field.
  double? _orderPrice;
  double get orderPrice => _orderPrice ?? 0.0;
  bool hasOrderPrice() => _orderPrice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _orderItems = getStructList(
      snapshotData['orderItems'],
      CartItemTypeStruct.fromMap,
    );
    _orderID = castToType<int>(snapshotData['orderID']);
    _orderPrice = castToType<double>(snapshotData['orderPrice']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? timeStamp,
  String? status,
  int? orderID,
  double? orderPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timeStamp': timeStamp,
      'status': status,
      'orderID': orderID,
      'orderPrice': orderPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timeStamp == e2?.timeStamp &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.orderItems, e2?.orderItems) &&
        e1?.orderID == e2?.orderID &&
        e1?.orderPrice == e2?.orderPrice;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash(
      [e?.timeStamp, e?.status, e?.orderItems, e?.orderID, e?.orderPrice]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
