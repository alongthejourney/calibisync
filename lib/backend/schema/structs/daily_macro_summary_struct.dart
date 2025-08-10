// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DailyMacroSummaryStruct extends FFFirebaseStruct {
  DailyMacroSummaryStruct({
    DateTime? logDate,
    int? totalCalories,
    int? totalFats,
    int? totalCarbs,
    int? totalProtein,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _logDate = logDate,
        _totalCalories = totalCalories,
        _totalFats = totalFats,
        _totalCarbs = totalCarbs,
        _totalProtein = totalProtein,
        _uid = uid,
        super(firestoreUtilData);

  // "logDate" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  set logDate(DateTime? val) => _logDate = val;

  bool hasLogDate() => _logDate != null;

  // "totalCalories" field.
  int? _totalCalories;
  int get totalCalories => _totalCalories ?? 0;
  set totalCalories(int? val) => _totalCalories = val;

  void incrementTotalCalories(int amount) =>
      totalCalories = totalCalories + amount;

  bool hasTotalCalories() => _totalCalories != null;

  // "totalFats" field.
  int? _totalFats;
  int get totalFats => _totalFats ?? 0;
  set totalFats(int? val) => _totalFats = val;

  void incrementTotalFats(int amount) => totalFats = totalFats + amount;

  bool hasTotalFats() => _totalFats != null;

  // "totalCarbs" field.
  int? _totalCarbs;
  int get totalCarbs => _totalCarbs ?? 0;
  set totalCarbs(int? val) => _totalCarbs = val;

  void incrementTotalCarbs(int amount) => totalCarbs = totalCarbs + amount;

  bool hasTotalCarbs() => _totalCarbs != null;

  // "totalProtein" field.
  int? _totalProtein;
  int get totalProtein => _totalProtein ?? 0;
  set totalProtein(int? val) => _totalProtein = val;

  void incrementTotalProtein(int amount) =>
      totalProtein = totalProtein + amount;

  bool hasTotalProtein() => _totalProtein != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static DailyMacroSummaryStruct fromMap(Map<String, dynamic> data) =>
      DailyMacroSummaryStruct(
        logDate: data['logDate'] as DateTime?,
        totalCalories: castToType<int>(data['totalCalories']),
        totalFats: castToType<int>(data['totalFats']),
        totalCarbs: castToType<int>(data['totalCarbs']),
        totalProtein: castToType<int>(data['totalProtein']),
        uid: data['uid'] as DocumentReference?,
      );

  static DailyMacroSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyMacroSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'logDate': _logDate,
        'totalCalories': _totalCalories,
        'totalFats': _totalFats,
        'totalCarbs': _totalCarbs,
        'totalProtein': _totalProtein,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logDate': serializeParam(
          _logDate,
          ParamType.DateTime,
        ),
        'totalCalories': serializeParam(
          _totalCalories,
          ParamType.int,
        ),
        'totalFats': serializeParam(
          _totalFats,
          ParamType.int,
        ),
        'totalCarbs': serializeParam(
          _totalCarbs,
          ParamType.int,
        ),
        'totalProtein': serializeParam(
          _totalProtein,
          ParamType.int,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static DailyMacroSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DailyMacroSummaryStruct(
        logDate: deserializeParam(
          data['logDate'],
          ParamType.DateTime,
          false,
        ),
        totalCalories: deserializeParam(
          data['totalCalories'],
          ParamType.int,
          false,
        ),
        totalFats: deserializeParam(
          data['totalFats'],
          ParamType.int,
          false,
        ),
        totalCarbs: deserializeParam(
          data['totalCarbs'],
          ParamType.int,
          false,
        ),
        totalProtein: deserializeParam(
          data['totalProtein'],
          ParamType.int,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['userss', 'NutritionLog'],
        ),
      );

  @override
  String toString() => 'DailyMacroSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DailyMacroSummaryStruct &&
        logDate == other.logDate &&
        totalCalories == other.totalCalories &&
        totalFats == other.totalFats &&
        totalCarbs == other.totalCarbs &&
        totalProtein == other.totalProtein &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([logDate, totalCalories, totalFats, totalCarbs, totalProtein, uid]);
}

DailyMacroSummaryStruct createDailyMacroSummaryStruct({
  DateTime? logDate,
  int? totalCalories,
  int? totalFats,
  int? totalCarbs,
  int? totalProtein,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailyMacroSummaryStruct(
      logDate: logDate,
      totalCalories: totalCalories,
      totalFats: totalFats,
      totalCarbs: totalCarbs,
      totalProtein: totalProtein,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DailyMacroSummaryStruct? updateDailyMacroSummaryStruct(
  DailyMacroSummaryStruct? dailyMacroSummary, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dailyMacroSummary
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDailyMacroSummaryStructData(
  Map<String, dynamic> firestoreData,
  DailyMacroSummaryStruct? dailyMacroSummary,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dailyMacroSummary == null) {
    return;
  }
  if (dailyMacroSummary.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dailyMacroSummary.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dailyMacroSummaryData =
      getDailyMacroSummaryFirestoreData(dailyMacroSummary, forFieldValue);
  final nestedData =
      dailyMacroSummaryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dailyMacroSummary.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDailyMacroSummaryFirestoreData(
  DailyMacroSummaryStruct? dailyMacroSummary, [
  bool forFieldValue = false,
]) {
  if (dailyMacroSummary == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dailyMacroSummary.toMap());

  // Add any Firestore field values
  dailyMacroSummary.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailyMacroSummaryListFirestoreData(
  List<DailyMacroSummaryStruct>? dailyMacroSummarys,
) =>
    dailyMacroSummarys
        ?.map((e) => getDailyMacroSummaryFirestoreData(e, true))
        .toList() ??
    [];
