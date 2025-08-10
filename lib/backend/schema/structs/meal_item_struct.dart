// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MealItemStruct extends FFFirebaseStruct {
  MealItemStruct({
    String? foodName,
    String? servingSize,
    int? calories,
    int? protein,
    int? fats,
    int? carbs,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foodName = foodName,
        _servingSize = servingSize,
        _calories = calories,
        _protein = protein,
        _fats = fats,
        _carbs = carbs,
        _uid = uid,
        super(firestoreUtilData);

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
  int? _calories;
  int get calories => _calories ?? 0;
  set calories(int? val) => _calories = val;

  void incrementCalories(int amount) => calories = calories + amount;

  bool hasCalories() => _calories != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  set protein(int? val) => _protein = val;

  void incrementProtein(int amount) => protein = protein + amount;

  bool hasProtein() => _protein != null;

  // "fats" field.
  int? _fats;
  int get fats => _fats ?? 0;
  set fats(int? val) => _fats = val;

  void incrementFats(int amount) => fats = fats + amount;

  bool hasFats() => _fats != null;

  // "carbs" field.
  int? _carbs;
  int get carbs => _carbs ?? 0;
  set carbs(int? val) => _carbs = val;

  void incrementCarbs(int amount) => carbs = carbs + amount;

  bool hasCarbs() => _carbs != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static MealItemStruct fromMap(Map<String, dynamic> data) => MealItemStruct(
        foodName: data['foodName'] as String?,
        servingSize: data['servingSize'] as String?,
        calories: castToType<int>(data['calories']),
        protein: castToType<int>(data['protein']),
        fats: castToType<int>(data['fats']),
        carbs: castToType<int>(data['carbs']),
        uid: data['uid'] as DocumentReference?,
      );

  static MealItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? MealItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'foodName': _foodName,
        'servingSize': _servingSize,
        'calories': _calories,
        'protein': _protein,
        'fats': _fats,
        'carbs': _carbs,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
          ParamType.int,
        ),
        'protein': serializeParam(
          _protein,
          ParamType.int,
        ),
        'fats': serializeParam(
          _fats,
          ParamType.int,
        ),
        'carbs': serializeParam(
          _carbs,
          ParamType.int,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static MealItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MealItemStruct(
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
          ParamType.int,
          false,
        ),
        protein: deserializeParam(
          data['protein'],
          ParamType.int,
          false,
        ),
        fats: deserializeParam(
          data['fats'],
          ParamType.int,
          false,
        ),
        carbs: deserializeParam(
          data['carbs'],
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
  String toString() => 'MealItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MealItemStruct &&
        foodName == other.foodName &&
        servingSize == other.servingSize &&
        calories == other.calories &&
        protein == other.protein &&
        fats == other.fats &&
        carbs == other.carbs &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([foodName, servingSize, calories, protein, fats, carbs, uid]);
}

MealItemStruct createMealItemStruct({
  String? foodName,
  String? servingSize,
  int? calories,
  int? protein,
  int? fats,
  int? carbs,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MealItemStruct(
      foodName: foodName,
      servingSize: servingSize,
      calories: calories,
      protein: protein,
      fats: fats,
      carbs: carbs,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MealItemStruct? updateMealItemStruct(
  MealItemStruct? mealItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mealItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMealItemStructData(
  Map<String, dynamic> firestoreData,
  MealItemStruct? mealItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mealItem == null) {
    return;
  }
  if (mealItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mealItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mealItemData = getMealItemFirestoreData(mealItem, forFieldValue);
  final nestedData = mealItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mealItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMealItemFirestoreData(
  MealItemStruct? mealItem, [
  bool forFieldValue = false,
]) {
  if (mealItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mealItem.toMap());

  // Add any Firestore field values
  mealItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMealItemListFirestoreData(
  List<MealItemStruct>? mealItems,
) =>
    mealItems?.map((e) => getMealItemFirestoreData(e, true)).toList() ?? [];
