import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeriodLogRecord extends FirestoreRecord {
  PeriodLogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "cycleLength" field.
  int? _cycleLength;
  int get cycleLength => _cycleLength ?? 0;
  bool hasCycleLength() => _cycleLength != null;

  // "prevDate" field.
  DateTime? _prevDate;
  DateTime? get prevDate => _prevDate;
  bool hasPrevDate() => _prevDate != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "phase" field.
  String? _phase;
  String get phase => _phase ?? '';
  bool hasPhase() => _phase != null;

  // "currentCycleDay" field.
  DateTime? _currentCycleDay;
  DateTime? get currentCycleDay => _currentCycleDay;
  bool hasCurrentCycleDay() => _currentCycleDay != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _cycleLength = castToType<int>(snapshotData['cycleLength']);
    _prevDate = snapshotData['prevDate'] as DateTime?;
    _symptoms = getDataList(snapshotData['symptoms']);
    _notes = snapshotData['notes'] as String?;
    _phase = snapshotData['phase'] as String?;
    _currentCycleDay = snapshotData['currentCycleDay'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _date = snapshotData['date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('periodLog')
          : FirebaseFirestore.instance.collectionGroup('periodLog');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('periodLog').doc(id);

  static Stream<PeriodLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PeriodLogRecord.fromSnapshot(s));

  static Future<PeriodLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PeriodLogRecord.fromSnapshot(s));

  static PeriodLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PeriodLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PeriodLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PeriodLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PeriodLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PeriodLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPeriodLogRecordData({
  DateTime? startDate,
  DateTime? endDate,
  int? cycleLength,
  DateTime? prevDate,
  String? notes,
  String? phase,
  DateTime? currentCycleDay,
  DateTime? createdAt,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startDate': startDate,
      'endDate': endDate,
      'cycleLength': cycleLength,
      'prevDate': prevDate,
      'notes': notes,
      'phase': phase,
      'currentCycleDay': currentCycleDay,
      'createdAt': createdAt,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class PeriodLogRecordDocumentEquality implements Equality<PeriodLogRecord> {
  const PeriodLogRecordDocumentEquality();

  @override
  bool equals(PeriodLogRecord? e1, PeriodLogRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.cycleLength == e2?.cycleLength &&
        e1?.prevDate == e2?.prevDate &&
        listEquality.equals(e1?.symptoms, e2?.symptoms) &&
        e1?.notes == e2?.notes &&
        e1?.phase == e2?.phase &&
        e1?.currentCycleDay == e2?.currentCycleDay &&
        e1?.createdAt == e2?.createdAt &&
        e1?.date == e2?.date;
  }

  @override
  int hash(PeriodLogRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.cycleLength,
        e?.prevDate,
        e?.symptoms,
        e?.notes,
        e?.phase,
        e?.currentCycleDay,
        e?.createdAt,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is PeriodLogRecord;
}
