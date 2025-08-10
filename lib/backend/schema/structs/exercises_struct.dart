// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExercisesStruct extends FFFirebaseStruct {
  ExercisesStruct({
    String? exerciseName,
    int? sets,
    List<int>? reps,
    List<double>? weight,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _exerciseName = exerciseName,
        _sets = sets,
        _reps = reps,
        _weight = weight,
        _uid = uid,
        super(firestoreUtilData);

  // "exerciseName" field.
  String? _exerciseName;
  String get exerciseName => _exerciseName ?? '';
  set exerciseName(String? val) => _exerciseName = val;

  bool hasExerciseName() => _exerciseName != null;

  // "sets" field.
  int? _sets;
  int get sets => _sets ?? 0;
  set sets(int? val) => _sets = val;

  void incrementSets(int amount) => sets = sets + amount;

  bool hasSets() => _sets != null;

  // "reps" field.
  List<int>? _reps;
  List<int> get reps => _reps ?? const [];
  set reps(List<int>? val) => _reps = val;

  void updateReps(Function(List<int>) updateFn) {
    updateFn(_reps ??= []);
  }

  bool hasReps() => _reps != null;

  // "weight" field.
  List<double>? _weight;
  List<double> get weight => _weight ?? const [];
  set weight(List<double>? val) => _weight = val;

  void updateWeight(Function(List<double>) updateFn) {
    updateFn(_weight ??= []);
  }

  bool hasWeight() => _weight != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static ExercisesStruct fromMap(Map<String, dynamic> data) => ExercisesStruct(
        exerciseName: data['exerciseName'] as String?,
        sets: castToType<int>(data['sets']),
        reps: getDataList(data['reps']),
        weight: getDataList(data['weight']),
        uid: data['uid'] as DocumentReference?,
      );

  static ExercisesStruct? maybeFromMap(dynamic data) => data is Map
      ? ExercisesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'exerciseName': _exerciseName,
        'sets': _sets,
        'reps': _reps,
        'weight': _weight,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'exerciseName': serializeParam(
          _exerciseName,
          ParamType.String,
        ),
        'sets': serializeParam(
          _sets,
          ParamType.int,
        ),
        'reps': serializeParam(
          _reps,
          ParamType.int,
          isList: true,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
          isList: true,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ExercisesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExercisesStruct(
        exerciseName: deserializeParam(
          data['exerciseName'],
          ParamType.String,
          false,
        ),
        sets: deserializeParam(
          data['sets'],
          ParamType.int,
          false,
        ),
        reps: deserializeParam<int>(
          data['reps'],
          ParamType.int,
          true,
        ),
        weight: deserializeParam<double>(
          data['weight'],
          ParamType.double,
          true,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['userss', 'workoutLog'],
        ),
      );

  @override
  String toString() => 'ExercisesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ExercisesStruct &&
        exerciseName == other.exerciseName &&
        sets == other.sets &&
        listEquality.equals(reps, other.reps) &&
        listEquality.equals(weight, other.weight) &&
        uid == other.uid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([exerciseName, sets, reps, weight, uid]);
}

ExercisesStruct createExercisesStruct({
  String? exerciseName,
  int? sets,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExercisesStruct(
      exerciseName: exerciseName,
      sets: sets,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExercisesStruct? updateExercisesStruct(
  ExercisesStruct? exercises, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    exercises
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExercisesStructData(
  Map<String, dynamic> firestoreData,
  ExercisesStruct? exercises,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exercises == null) {
    return;
  }
  if (exercises.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && exercises.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exercisesData = getExercisesFirestoreData(exercises, forFieldValue);
  final nestedData = exercisesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = exercises.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExercisesFirestoreData(
  ExercisesStruct? exercises, [
  bool forFieldValue = false,
]) {
  if (exercises == null) {
    return {};
  }
  final firestoreData = mapToFirestore(exercises.toMap());

  // Add any Firestore field values
  exercises.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExercisesListFirestoreData(
  List<ExercisesStruct>? exercisess,
) =>
    exercisess?.map((e) => getExercisesFirestoreData(e, true)).toList() ?? [];
