import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgresPhotoRecord extends FirestoreRecord {
  ProgresPhotoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('progresPhoto')
          : FirebaseFirestore.instance.collectionGroup('progresPhoto');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('progresPhoto').doc(id);

  static Stream<ProgresPhotoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgresPhotoRecord.fromSnapshot(s));

  static Future<ProgresPhotoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgresPhotoRecord.fromSnapshot(s));

  static ProgresPhotoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgresPhotoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgresPhotoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgresPhotoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgresPhotoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgresPhotoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgresPhotoRecordData({
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgresPhotoRecordDocumentEquality
    implements Equality<ProgresPhotoRecord> {
  const ProgresPhotoRecordDocumentEquality();

  @override
  bool equals(ProgresPhotoRecord? e1, ProgresPhotoRecord? e2) {
    return e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ProgresPhotoRecord? e) => const ListEquality().hash([e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ProgresPhotoRecord;
}
