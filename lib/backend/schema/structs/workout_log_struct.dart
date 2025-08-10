// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WorkoutLogStruct extends FFFirebaseStruct {
  WorkoutLogStruct({
    DateTime? workoutDate,
    String? muscleGroup,
    String? notes,
    int? durationMinutes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _workoutDate = workoutDate,
        _muscleGroup = muscleGroup,
        _notes = notes,
        _durationMinutes = durationMinutes,
        super(firestoreUtilData);

  // "workoutDate" field.
  DateTime? _workoutDate;
  DateTime? get workoutDate => _workoutDate;
  set workoutDate(DateTime? val) => _workoutDate = val;

  bool hasWorkoutDate() => _workoutDate != null;

  // "muscleGroup" field.
  String? _muscleGroup;
  String get muscleGroup => _muscleGroup ?? '';
  set muscleGroup(String? val) => _muscleGroup = val;

  bool hasMuscleGroup() => _muscleGroup != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "durationMinutes" field.
  int? _durationMinutes;
  int get durationMinutes => _durationMinutes ?? 0;
  set durationMinutes(int? val) => _durationMinutes = val;

  void incrementDurationMinutes(int amount) =>
      durationMinutes = durationMinutes + amount;

  bool hasDurationMinutes() => _durationMinutes != null;

  static WorkoutLogStruct fromMap(Map<String, dynamic> data) =>
      WorkoutLogStruct(
        workoutDate: data['workoutDate'] as DateTime?,
        muscleGroup: data['muscleGroup'] as String?,
        notes: data['notes'] as String?,
        durationMinutes: castToType<int>(data['durationMinutes']),
      );

  static WorkoutLogStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkoutLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'workoutDate': _workoutDate,
        'muscleGroup': _muscleGroup,
        'notes': _notes,
        'durationMinutes': _durationMinutes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'workoutDate': serializeParam(
          _workoutDate,
          ParamType.DateTime,
        ),
        'muscleGroup': serializeParam(
          _muscleGroup,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'durationMinutes': serializeParam(
          _durationMinutes,
          ParamType.int,
        ),
      }.withoutNulls;

  static WorkoutLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkoutLogStruct(
        workoutDate: deserializeParam(
          data['workoutDate'],
          ParamType.DateTime,
          false,
        ),
        muscleGroup: deserializeParam(
          data['muscleGroup'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        durationMinutes: deserializeParam(
          data['durationMinutes'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WorkoutLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkoutLogStruct &&
        workoutDate == other.workoutDate &&
        muscleGroup == other.muscleGroup &&
        notes == other.notes &&
        durationMinutes == other.durationMinutes;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([workoutDate, muscleGroup, notes, durationMinutes]);
}

WorkoutLogStruct createWorkoutLogStruct({
  DateTime? workoutDate,
  String? muscleGroup,
  String? notes,
  int? durationMinutes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkoutLogStruct(
      workoutDate: workoutDate,
      muscleGroup: muscleGroup,
      notes: notes,
      durationMinutes: durationMinutes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkoutLogStruct? updateWorkoutLogStruct(
  WorkoutLogStruct? workoutLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workoutLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkoutLogStructData(
  Map<String, dynamic> firestoreData,
  WorkoutLogStruct? workoutLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workoutLog == null) {
    return;
  }
  if (workoutLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && workoutLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workoutLogData = getWorkoutLogFirestoreData(workoutLog, forFieldValue);
  final nestedData = workoutLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = workoutLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkoutLogFirestoreData(
  WorkoutLogStruct? workoutLog, [
  bool forFieldValue = false,
]) {
  if (workoutLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workoutLog.toMap());

  // Add any Firestore field values
  workoutLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkoutLogListFirestoreData(
  List<WorkoutLogStruct>? workoutLogs,
) =>
    workoutLogs?.map((e) => getWorkoutLogFirestoreData(e, true)).toList() ?? [];
