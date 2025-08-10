// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NutritionLogStruct extends FFFirebaseStruct {
  NutritionLogStruct({
    DateTime? logDate,
    String? notes,
    String? mealName,

    /// The name input or selected
    String? foodName,
    String? servingSize,

    /// From API or calculated
    double? calories,

    /// grams of protein
    double? protein,

    /// grams of carbs
    double? carbs,

    /// grams of fats
    double? fats,

    /// auto-filled timestamp
    DateTime? createdAt,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _logDate = logDate,
        _notes = notes,
        _mealName = mealName,
        _foodName = foodName,
        _servingSize = servingSize,
        _calories = calories,
        _protein = protein,
        _carbs = carbs,
        _fats = fats,
        _createdAt = createdAt,
        _uid = uid,
        super(firestoreUtilData);

  // "logDate" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  set logDate(DateTime? val) => _logDate = val;

  bool hasLogDate() => _logDate != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "mealName" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  set mealName(String? val) => _mealName = val;

  bool hasMealName() => _mealName != null;

  // "foodName" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  set foodName(String? val) => _foodName = val;

  bool hasFoodName() => _foodName != null;

  // "servingSize" field.
  String? _servingSize;
  String get servingSize => _servingSize ?? '';
  set servingSize(String? val) => _servingSize = val;

  bool hasServingSize() => _servingSize != null;

  // "calories" field.
  double? _calories;
  double get calories => _calories ?? 0.0;
  set calories(double? val) => _calories = val;

  void incrementCalories(double amount) => calories = calories + amount;

  bool hasCalories() => _calories != null;

  // "protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  set protein(double? val) => _protein = val;

  void incrementProtein(double amount) => protein = protein + amount;

  bool hasProtein() => _protein != null;

  // "carbs" field.
  double? _carbs;
  double get carbs => _carbs ?? 0.0;
  set carbs(double? val) => _carbs = val;

  void incrementCarbs(double amount) => carbs = carbs + amount;

  bool hasCarbs() => _carbs != null;

  // "fats" field.
  double? _fats;
  double get fats => _fats ?? 0.0;
  set fats(double? val) => _fats = val;

  void incrementFats(double amount) => fats = fats + amount;

  bool hasFats() => _fats != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static NutritionLogStruct fromMap(Map<String, dynamic> data) =>
      NutritionLogStruct(
        logDate: data['logDate'] as DateTime?,
        notes: data['notes'] as String?,
        mealName: data['mealName'] as String?,
        foodName: data['foodName'] as String?,
        servingSize: data['servingSize'] as String?,
        calories: castToType<double>(data['calories']),
        protein: castToType<double>(data['protein']),
        carbs: castToType<double>(data['carbs']),
        fats: castToType<double>(data['fats']),
        createdAt: data['createdAt'] as DateTime?,
        uid: data['uid'] as DocumentReference?,
      );

  static NutritionLogStruct? maybeFromMap(dynamic data) => data is Map
      ? NutritionLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'logDate': _logDate,
        'notes': _notes,
        'mealName': _mealName,
        'foodName': _foodName,
        'servingSize': _servingSize,
        'calories': _calories,
        'protein': _protein,
        'carbs': _carbs,
        'fats': _fats,
        'createdAt': _createdAt,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logDate': serializeParam(
          _logDate,
          ParamType.DateTime,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'mealName': serializeParam(
          _mealName,
          ParamType.String,
        ),
        'foodName': serializeParam(
          _foodName,
          ParamType.String,
        ),
        'servingSize': serializeParam(
          _servingSize,
          ParamType.String,
        ),
        'calories': serializeParam(
          _calories,
          ParamType.double,
        ),
        'protein': serializeParam(
          _protein,
          ParamType.double,
        ),
        'carbs': serializeParam(
          _carbs,
          ParamType.double,
        ),
        'fats': serializeParam(
          _fats,
          ParamType.double,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static NutritionLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutritionLogStruct(
        logDate: deserializeParam(
          data['logDate'],
          ParamType.DateTime,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        mealName: deserializeParam(
          data['mealName'],
          ParamType.String,
          false,
        ),
        foodName: deserializeParam(
          data['foodName'],
          ParamType.String,
          false,
        ),
        servingSize: deserializeParam(
          data['servingSize'],
          ParamType.String,
          false,
        ),
        calories: deserializeParam(
          data['calories'],
          ParamType.double,
          false,
        ),
        protein: deserializeParam(
          data['protein'],
          ParamType.double,
          false,
        ),
        carbs: deserializeParam(
          data['carbs'],
          ParamType.double,
          false,
        ),
        fats: deserializeParam(
          data['fats'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
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
  String toString() => 'NutritionLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NutritionLogStruct &&
        logDate == other.logDate &&
        notes == other.notes &&
        mealName == other.mealName &&
        foodName == other.foodName &&
        servingSize == other.servingSize &&
        calories == other.calories &&
        protein == other.protein &&
        carbs == other.carbs &&
        fats == other.fats &&
        createdAt == other.createdAt &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        logDate,
        notes,
        mealName,
        foodName,
        servingSize,
        calories,
        protein,
        carbs,
        fats,
        createdAt,
        uid
      ]);
}

NutritionLogStruct createNutritionLogStruct({
  DateTime? logDate,
  String? notes,
  String? mealName,
  String? foodName,
  String? servingSize,
  double? calories,
  double? protein,
  double? carbs,
  double? fats,
  DateTime? createdAt,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NutritionLogStruct(
      logDate: logDate,
      notes: notes,
      mealName: mealName,
      foodName: foodName,
      servingSize: servingSize,
      calories: calories,
      protein: protein,
      carbs: carbs,
      fats: fats,
      createdAt: createdAt,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NutritionLogStruct? updateNutritionLogStruct(
  NutritionLogStruct? nutritionLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nutritionLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNutritionLogStructData(
  Map<String, dynamic> firestoreData,
  NutritionLogStruct? nutritionLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nutritionLog == null) {
    return;
  }
  if (nutritionLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nutritionLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nutritionLogData =
      getNutritionLogFirestoreData(nutritionLog, forFieldValue);
  final nestedData =
      nutritionLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nutritionLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNutritionLogFirestoreData(
  NutritionLogStruct? nutritionLog, [
  bool forFieldValue = false,
]) {
  if (nutritionLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nutritionLog.toMap());

  // Add any Firestore field values
  nutritionLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNutritionLogListFirestoreData(
  List<NutritionLogStruct>? nutritionLogs,
) =>
    nutritionLogs?.map((e) => getNutritionLogFirestoreData(e, true)).toList() ??
    [];
