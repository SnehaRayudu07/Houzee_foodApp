// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CookProfileStruct extends FFFirebaseStruct {
  CookProfileStruct({
    String? name,
    String? bio,
    String? location,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _bio = bio,
        _location = location,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;
  bool hasBio() => _bio != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  static CookProfileStruct fromMap(Map<String, dynamic> data) =>
      CookProfileStruct(
        name: data['Name'] as String?,
        bio: data['Bio'] as String?,
        location: data['Location'] as String?,
      );

  static CookProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? CookProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Bio': _bio,
        'Location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'Location': serializeParam(
          _location,
          ParamType.String,
        ),
      }.withoutNulls;

  static CookProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      CookProfileStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['Bio'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['Location'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CookProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CookProfileStruct &&
        name == other.name &&
        bio == other.bio &&
        location == other.location;
  }

  @override
  int get hashCode => const ListEquality().hash([name, bio, location]);
}

CookProfileStruct createCookProfileStruct({
  String? name,
  String? bio,
  String? location,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CookProfileStruct(
      name: name,
      bio: bio,
      location: location,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CookProfileStruct? updateCookProfileStruct(
  CookProfileStruct? cookProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cookProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCookProfileStructData(
  Map<String, dynamic> firestoreData,
  CookProfileStruct? cookProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cookProfile == null) {
    return;
  }
  if (cookProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cookProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cookProfileData =
      getCookProfileFirestoreData(cookProfile, forFieldValue);
  final nestedData =
      cookProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cookProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCookProfileFirestoreData(
  CookProfileStruct? cookProfile, [
  bool forFieldValue = false,
]) {
  if (cookProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cookProfile.toMap());

  // Add any Firestore field values
  cookProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCookProfileListFirestoreData(
  List<CookProfileStruct>? cookProfiles,
) =>
    cookProfiles?.map((e) => getCookProfileFirestoreData(e, true)).toList() ??
    [];
