// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeriodLogStruct extends FFFirebaseStruct {
  PeriodLogStruct({
    DateTime? startDate,
    DateTime? endDate,
    DateTime? prevDate,
    int? cycleLength,
    int? currentCycleDay,
    String? phase,
    List<String>? symptoms,
    String? notes,
    DateTime? predictedDate,
    DateTime? intimateDates,
    int? daysSinceStartDate,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startDate = startDate,
        _endDate = endDate,
        _prevDate = prevDate,
        _cycleLength = cycleLength,
        _currentCycleDay = currentCycleDay,
        _phase = phase,
        _symptoms = symptoms,
        _notes = notes,
        _predictedDate = predictedDate,
        _intimateDates = intimateDates,
        _daysSinceStartDate = daysSinceStartDate,
        _uid = uid,
        super(firestoreUtilData);

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "prevDate" field.
  DateTime? _prevDate;
  DateTime? get prevDate => _prevDate;
  set prevDate(DateTime? val) => _prevDate = val;

  bool hasPrevDate() => _prevDate != null;

  // "cycleLength" field.
  int? _cycleLength;
  int get cycleLength => _cycleLength ?? 0;
  set cycleLength(int? val) => _cycleLength = val;

  void incrementCycleLength(int amount) => cycleLength = cycleLength + amount;

  bool hasCycleLength() => _cycleLength != null;

  // "currentCycleDay" field.
  int? _currentCycleDay;
  int get currentCycleDay => _currentCycleDay ?? 0;
  set currentCycleDay(int? val) => _currentCycleDay = val;

  void incrementCurrentCycleDay(int amount) =>
      currentCycleDay = currentCycleDay + amount;

  bool hasCurrentCycleDay() => _currentCycleDay != null;

  // "phase" field.
  String? _phase;
  String get phase => _phase ?? '';
  set phase(String? val) => _phase = val;

  bool hasPhase() => _phase != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  set symptoms(List<String>? val) => _symptoms = val;

  void updateSymptoms(Function(List<String>) updateFn) {
    updateFn(_symptoms ??= []);
  }

  bool hasSymptoms() => _symptoms != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "predictedDate" field.
  DateTime? _predictedDate;
  DateTime? get predictedDate => _predictedDate;
  set predictedDate(DateTime? val) => _predictedDate = val;

  bool hasPredictedDate() => _predictedDate != null;

  // "intimateDates" field.
  DateTime? _intimateDates;
  DateTime? get intimateDates => _intimateDates;
  set intimateDates(DateTime? val) => _intimateDates = val;

  bool hasIntimateDates() => _intimateDates != null;

  // "daysSinceStartDate" field.
  int? _daysSinceStartDate;
  int get daysSinceStartDate => _daysSinceStartDate ?? 0;
  set daysSinceStartDate(int? val) => _daysSinceStartDate = val;

  void incrementDaysSinceStartDate(int amount) =>
      daysSinceStartDate = daysSinceStartDate + amount;

  bool hasDaysSinceStartDate() => _daysSinceStartDate != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static PeriodLogStruct fromMap(Map<String, dynamic> data) => PeriodLogStruct(
        startDate: data['startDate'] as DateTime?,
        endDate: data['endDate'] as DateTime?,
        prevDate: data['prevDate'] as DateTime?,
        cycleLength: castToType<int>(data['cycleLength']),
        currentCycleDay: castToType<int>(data['currentCycleDay']),
        phase: data['phase'] as String?,
        symptoms: getDataList(data['symptoms']),
        notes: data['notes'] as String?,
        predictedDate: data['predictedDate'] as DateTime?,
        intimateDates: data['intimateDates'] as DateTime?,
        daysSinceStartDate: castToType<int>(data['daysSinceStartDate']),
        uid: data['uid'] as DocumentReference?,
      );

  static PeriodLogStruct? maybeFromMap(dynamic data) => data is Map
      ? PeriodLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'startDate': _startDate,
        'endDate': _endDate,
        'prevDate': _prevDate,
        'cycleLength': _cycleLength,
        'currentCycleDay': _currentCycleDay,
        'phase': _phase,
        'symptoms': _symptoms,
        'notes': _notes,
        'predictedDate': _predictedDate,
        'intimateDates': _intimateDates,
        'daysSinceStartDate': _daysSinceStartDate,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'prevDate': serializeParam(
          _prevDate,
          ParamType.DateTime,
        ),
        'cycleLength': serializeParam(
          _cycleLength,
          ParamType.int,
        ),
        'currentCycleDay': serializeParam(
          _currentCycleDay,
          ParamType.int,
        ),
        'phase': serializeParam(
          _phase,
          ParamType.String,
        ),
        'symptoms': serializeParam(
          _symptoms,
          ParamType.String,
          isList: true,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'predictedDate': serializeParam(
          _predictedDate,
          ParamType.DateTime,
        ),
        'intimateDates': serializeParam(
          _intimateDates,
          ParamType.DateTime,
        ),
        'daysSinceStartDate': serializeParam(
          _daysSinceStartDate,
          ParamType.int,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static PeriodLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      PeriodLogStruct(
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
        prevDate: deserializeParam(
          data['prevDate'],
          ParamType.DateTime,
          false,
        ),
        cycleLength: deserializeParam(
          data['cycleLength'],
          ParamType.int,
          false,
        ),
        currentCycleDay: deserializeParam(
          data['currentCycleDay'],
          ParamType.int,
          false,
        ),
        phase: deserializeParam(
          data['phase'],
          ParamType.String,
          false,
        ),
        symptoms: deserializeParam<String>(
          data['symptoms'],
          ParamType.String,
          true,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        predictedDate: deserializeParam(
          data['predictedDate'],
          ParamType.DateTime,
          false,
        ),
        intimateDates: deserializeParam(
          data['intimateDates'],
          ParamType.DateTime,
          false,
        ),
        daysSinceStartDate: deserializeParam(
          data['daysSinceStartDate'],
          ParamType.int,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['userss', 'periodLog'],
        ),
      );

  @override
  String toString() => 'PeriodLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PeriodLogStruct &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        prevDate == other.prevDate &&
        cycleLength == other.cycleLength &&
        currentCycleDay == other.currentCycleDay &&
        phase == other.phase &&
        listEquality.equals(symptoms, other.symptoms) &&
        notes == other.notes &&
        predictedDate == other.predictedDate &&
        intimateDates == other.intimateDates &&
        daysSinceStartDate == other.daysSinceStartDate &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        startDate,
        endDate,
        prevDate,
        cycleLength,
        currentCycleDay,
        phase,
        symptoms,
        notes,
        predictedDate,
        intimateDates,
        daysSinceStartDate,
        uid
      ]);
}

PeriodLogStruct createPeriodLogStruct({
  DateTime? startDate,
  DateTime? endDate,
  DateTime? prevDate,
  int? cycleLength,
  int? currentCycleDay,
  String? phase,
  String? notes,
  DateTime? predictedDate,
  DateTime? intimateDates,
  int? daysSinceStartDate,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PeriodLogStruct(
      startDate: startDate,
      endDate: endDate,
      prevDate: prevDate,
      cycleLength: cycleLength,
      currentCycleDay: currentCycleDay,
      phase: phase,
      notes: notes,
      predictedDate: predictedDate,
      intimateDates: intimateDates,
      daysSinceStartDate: daysSinceStartDate,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PeriodLogStruct? updatePeriodLogStruct(
  PeriodLogStruct? periodLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    periodLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPeriodLogStructData(
  Map<String, dynamic> firestoreData,
  PeriodLogStruct? periodLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (periodLog == null) {
    return;
  }
  if (periodLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && periodLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final periodLogData = getPeriodLogFirestoreData(periodLog, forFieldValue);
  final nestedData = periodLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = periodLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPeriodLogFirestoreData(
  PeriodLogStruct? periodLog, [
  bool forFieldValue = false,
]) {
  if (periodLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(periodLog.toMap());

  // Add any Firestore field values
  periodLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPeriodLogListFirestoreData(
  List<PeriodLogStruct>? periodLogs,
) =>
    periodLogs?.map((e) => getPeriodLogFirestoreData(e, true)).toList() ?? [];
