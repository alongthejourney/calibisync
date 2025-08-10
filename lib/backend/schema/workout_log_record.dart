import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkoutLogRecord extends FirestoreRecord {
  WorkoutLogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "workoutDate" field.
  DateTime? _workoutDate;
  DateTime? get workoutDate => _workoutDate;
  bool hasWorkoutDate() => _workoutDate != null;

  // "muscleGroup" field.
  String? _muscleGroup;
  String get muscleGroup => _muscleGroup ?? '';
  bool hasMuscleGroup() => _muscleGroup != null;

  // "exercises" field.
  List<ExercisesStruct>? _exercises;
  List<ExercisesStruct> get exercises => _exercises ?? const [];
  bool hasExercises() => _exercises != null;

  // "durationsMinutes" field.
  int? _durationsMinutes;
  int get durationsMinutes => _durationsMinutes ?? 0;
  bool hasDurationsMinutes() => _durationsMinutes != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "reps" field.
  int? _reps;
  int get reps => _reps ?? 0;
  bool hasReps() => _reps != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "sets" field.
  int? _sets;
  int get sets => _sets ?? 0;
  bool hasSets() => _sets != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _workoutDate = snapshotData['workoutDate'] as DateTime?;
    _muscleGroup = snapshotData['muscleGroup'] as String?;
    _exercises = getStructList(
      snapshotData['exercises'],
      ExercisesStruct.fromMap,
    );
    _durationsMinutes = castToType<int>(snapshotData['durationsMinutes']);
    _notes = snapshotData['notes'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _reps = castToType<int>(snapshotData['reps']);
    _weight = castToType<double>(snapshotData['weight']);
    _sets = castToType<int>(snapshotData['sets']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('workoutLog')
          : FirebaseFirestore.instance.collectionGroup('workoutLog');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('workoutLog').doc(id);

  static Stream<WorkoutLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkoutLogRecord.fromSnapshot(s));

  static Future<WorkoutLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkoutLogRecord.fromSnapshot(s));

  static WorkoutLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkoutLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkoutLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkoutLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkoutLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkoutLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkoutLogRecordData({
  DateTime? workoutDate,
  String? muscleGroup,
  int? durationsMinutes,
  String? notes,
  DateTime? createdAt,
  int? reps,
  double? weight,
  int? sets,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'workoutDate': workoutDate,
      'muscleGroup': muscleGroup,
      'durationsMinutes': durationsMinutes,
      'notes': notes,
      'createdAt': createdAt,
      'reps': reps,
      'weight': weight,
      'sets': sets,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkoutLogRecordDocumentEquality implements Equality<WorkoutLogRecord> {
  const WorkoutLogRecordDocumentEquality();

  @override
  bool equals(WorkoutLogRecord? e1, WorkoutLogRecord? e2) {
    const listEquality = ListEquality();
    return e1?.workoutDate == e2?.workoutDate &&
        e1?.muscleGroup == e2?.muscleGroup &&
        listEquality.equals(e1?.exercises, e2?.exercises) &&
        e1?.durationsMinutes == e2?.durationsMinutes &&
        e1?.notes == e2?.notes &&
        e1?.createdAt == e2?.createdAt &&
        e1?.reps == e2?.reps &&
        e1?.weight == e2?.weight &&
        e1?.sets == e2?.sets;
  }

  @override
  int hash(WorkoutLogRecord? e) => const ListEquality().hash([
        e?.workoutDate,
        e?.muscleGroup,
        e?.exercises,
        e?.durationsMinutes,
        e?.notes,
        e?.createdAt,
        e?.reps,
        e?.weight,
        e?.sets
      ]);

  @override
  bool isValidKey(Object? o) => o is WorkoutLogRecord;
}
