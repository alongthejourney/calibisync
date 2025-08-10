// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomEntryStruct extends FFFirebaseStruct {
  SymptomEntryStruct({
    List<String>? symptomName,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _symptomName = symptomName,
        _uid = uid,
        super(firestoreUtilData);

  // "symptomName" field.
  List<String>? _symptomName;
  List<String> get symptomName => _symptomName ?? const [];
  set symptomName(List<String>? val) => _symptomName = val;

  void updateSymptomName(Function(List<String>) updateFn) {
    updateFn(_symptomName ??= []);
  }

  bool hasSymptomName() => _symptomName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static SymptomEntryStruct fromMap(Map<String, dynamic> data) =>
      SymptomEntryStruct(
        symptomName: getDataList(data['symptomName']),
        uid: data['uid'] as DocumentReference?,
      );

  static SymptomEntryStruct? maybeFromMap(dynamic data) => data is Map
      ? SymptomEntryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'symptomName': _symptomName,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'symptomName': serializeParam(
          _symptomName,
          ParamType.String,
          isList: true,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static SymptomEntryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SymptomEntryStruct(
        symptomName: deserializeParam<String>(
          data['symptomName'],
          ParamType.String,
          true,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['userss', 'periodLog'],
        ),
      );

  @override
  String toString() => 'SymptomEntryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SymptomEntryStruct &&
        listEquality.equals(symptomName, other.symptomName) &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([symptomName, uid]);
}

SymptomEntryStruct createSymptomEntryStruct({
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SymptomEntryStruct(
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SymptomEntryStruct? updateSymptomEntryStruct(
  SymptomEntryStruct? symptomEntry, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    symptomEntry
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSymptomEntryStructData(
  Map<String, dynamic> firestoreData,
  SymptomEntryStruct? symptomEntry,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (symptomEntry == null) {
    return;
  }
  if (symptomEntry.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && symptomEntry.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final symptomEntryData =
      getSymptomEntryFirestoreData(symptomEntry, forFieldValue);
  final nestedData =
      symptomEntryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = symptomEntry.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSymptomEntryFirestoreData(
  SymptomEntryStruct? symptomEntry, [
  bool forFieldValue = false,
]) {
  if (symptomEntry == null) {
    return {};
  }
  final firestoreData = mapToFirestore(symptomEntry.toMap());

  // Add any Firestore field values
  symptomEntry.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSymptomEntryListFirestoreData(
  List<SymptomEntryStruct>? symptomEntrys,
) =>
    symptomEntrys?.map((e) => getSymptomEntryFirestoreData(e, true)).toList() ??
    [];
