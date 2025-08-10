import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutritionLogRecord extends FirestoreRecord {
  NutritionLogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "logDate" field.
  DateTime? _logDate;
  DateTime? get logDate => _logDate;
  bool hasLogDate() => _logDate != null;

  // "mealName" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  bool hasMealName() => _mealName != null;

  // "foodName" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "servingSize" field.
  String? _servingSize;
  String get servingSize => _servingSize ?? '';
  bool hasServingSize() => _servingSize != null;

  // "calories" field.
  double? _calories;
  double get calories => _calories ?? 0.0;
  bool hasCalories() => _calories != null;

  // "protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  bool hasProtein() => _protein != null;

  // "carbs" field.
  double? _carbs;
  double get carbs => _carbs ?? 0.0;
  bool hasCarbs() => _carbs != null;

  // "totalCalories" field.
  double? _totalCalories;
  double get totalCalories => _totalCalories ?? 0.0;
  bool hasTotalCalories() => _totalCalories != null;

  // "totalCarbs" field.
  double? _totalCarbs;
  double get totalCarbs => _totalCarbs ?? 0.0;
  bool hasTotalCarbs() => _totalCarbs != null;

  // "totalFats" field.
  double? _totalFats;
  double get totalFats => _totalFats ?? 0.0;
  bool hasTotalFats() => _totalFats != null;

  // "fats" field.
  double? _fats;
  double get fats => _fats ?? 0.0;
  bool hasFats() => _fats != null;

  // "totalProtein" field.
  double? _totalProtein;
  double get totalProtein => _totalProtein ?? 0.0;
  bool hasTotalProtein() => _totalProtein != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _logDate = snapshotData['logDate'] as DateTime?;
    _mealName = snapshotData['mealName'] as String?;
    _foodName = snapshotData['foodName'] as String?;
    _servingSize = snapshotData['servingSize'] as String?;
    _calories = castToType<double>(snapshotData['calories']);
    _protein = castToType<double>(snapshotData['protein']);
    _carbs = castToType<double>(snapshotData['carbs']);
    _totalCalories = castToType<double>(snapshotData['totalCalories']);
    _totalCarbs = castToType<double>(snapshotData['totalCarbs']);
    _totalFats = castToType<double>(snapshotData['totalFats']);
    _fats = castToType<double>(snapshotData['fats']);
    _totalProtein = castToType<double>(snapshotData['totalProtein']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('NutritionLog')
          : FirebaseFirestore.instance.collectionGroup('NutritionLog');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('NutritionLog').doc(id);

  static Stream<NutritionLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NutritionLogRecord.fromSnapshot(s));

  static Future<NutritionLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NutritionLogRecord.fromSnapshot(s));

  static NutritionLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NutritionLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NutritionLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NutritionLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NutritionLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NutritionLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNutritionLogRecordData({
  DateTime? logDate,
  String? mealName,
  String? foodName,
  String? servingSize,
  double? calories,
  double? protein,
  double? carbs,
  double? totalCalories,
  double? totalCarbs,
  double? totalFats,
  double? fats,
  double? totalProtein,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'logDate': logDate,
      'mealName': mealName,
      'foodName': foodName,
      'servingSize': servingSize,
      'calories': calories,
      'protein': protein,
      'carbs': carbs,
      'totalCalories': totalCalories,
      'totalCarbs': totalCarbs,
      'totalFats': totalFats,
      'fats': fats,
      'totalProtein': totalProtein,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class NutritionLogRecordDocumentEquality
    implements Equality<NutritionLogRecord> {
  const NutritionLogRecordDocumentEquality();

  @override
  bool equals(NutritionLogRecord? e1, NutritionLogRecord? e2) {
    return e1?.logDate == e2?.logDate &&
        e1?.mealName == e2?.mealName &&
        e1?.foodName == e2?.foodName &&
        e1?.servingSize == e2?.servingSize &&
        e1?.calories == e2?.calories &&
        e1?.protein == e2?.protein &&
        e1?.carbs == e2?.carbs &&
        e1?.totalCalories == e2?.totalCalories &&
        e1?.totalCarbs == e2?.totalCarbs &&
        e1?.totalFats == e2?.totalFats &&
        e1?.fats == e2?.fats &&
        e1?.totalProtein == e2?.totalProtein &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(NutritionLogRecord? e) => const ListEquality().hash([
        e?.logDate,
        e?.mealName,
        e?.foodName,
        e?.servingSize,
        e?.calories,
        e?.protein,
        e?.carbs,
        e?.totalCalories,
        e?.totalCarbs,
        e?.totalFats,
        e?.fats,
        e?.totalProtein,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is NutritionLogRecord;
}
