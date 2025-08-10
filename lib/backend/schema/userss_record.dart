import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserssRecord extends FirestoreRecord {
  UserssRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;

  /// authUser.uid
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "cycleLength" field.
  int? _cycleLength;
  int get cycleLength => _cycleLength ?? 0;
  bool hasCycleLength() => _cycleLength != null;

  // "prevDate" field.
  DateTime? _prevDate;
  DateTime? get prevDate => _prevDate;
  bool hasPrevDate() => _prevDate != null;

  // "fitnessGoal" field.
  String? _fitnessGoal;
  String get fitnessGoal => _fitnessGoal ?? '';
  bool hasFitnessGoal() => _fitnessGoal != null;

  // "calorieGoal" field.
  int? _calorieGoal;
  int get calorieGoal => _calorieGoal ?? 0;
  bool hasCalorieGoal() => _calorieGoal != null;

  // "proteinGoal" field.
  int? _proteinGoal;
  int get proteinGoal => _proteinGoal ?? 0;
  bool hasProteinGoal() => _proteinGoal != null;

  // "carbGoal" field.
  int? _carbGoal;
  int get carbGoal => _carbGoal ?? 0;
  bool hasCarbGoal() => _carbGoal != null;

  // "fatGoal" field.
  int? _fatGoal;
  int get fatGoal => _fatGoal ?? 0;
  bool hasFatGoal() => _fatGoal != null;

  // "lastWorkoutDate" field.
  DateTime? _lastWorkoutDate;
  DateTime? get lastWorkoutDate => _lastWorkoutDate;
  bool hasLastWorkoutDate() => _lastWorkoutDate != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "totalFat" field.
  double? _totalFat;
  double get totalFat => _totalFat ?? 0.0;
  bool hasTotalFat() => _totalFat != null;

  // "totalProtein" field.
  double? _totalProtein;
  double get totalProtein => _totalProtein ?? 0.0;
  bool hasTotalProtein() => _totalProtein != null;

  // "totalCarbs" field.
  double? _totalCarbs;
  double get totalCarbs => _totalCarbs ?? 0.0;
  bool hasTotalCarbs() => _totalCarbs != null;

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "uidd" field.
  DocumentReference? _uidd;
  DocumentReference? get uidd => _uidd;
  bool hasUidd() => _uidd != null;

  // "profileCompleted" field.
  bool? _profileCompleted;
  bool get profileCompleted => _profileCompleted ?? false;
  bool hasProfileCompleted() => _profileCompleted != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "intimateDate" field.
  DateTime? _intimateDate;
  DateTime? get intimateDate => _intimateDate;
  bool hasIntimateDate() => _intimateDate != null;

  // "hasLoggedRestToday" field.
  bool? _hasLoggedRestToday;
  bool get hasLoggedRestToday => _hasLoggedRestToday ?? false;
  bool hasHasLoggedRestToday() => _hasLoggedRestToday != null;

  // "hasLoggedWorkoutToday" field.
  bool? _hasLoggedWorkoutToday;
  bool get hasLoggedWorkoutToday => _hasLoggedWorkoutToday ?? false;
  bool hasHasLoggedWorkoutToday() => _hasLoggedWorkoutToday != null;

  // "dayOfPhase" field.
  int? _dayOfPhase;
  int get dayOfPhase => _dayOfPhase ?? 0;
  bool hasDayOfPhase() => _dayOfPhase != null;

  // "phaseName" field.
  String? _phaseName;
  String get phaseName => _phaseName ?? '';
  bool hasPhaseName() => _phaseName != null;

  // "Mood" field.
  String? _mood;
  String get mood => _mood ?? '';
  bool hasMood() => _mood != null;

  // "focusedDay" field.
  DateTime? _focusedDay;
  DateTime? get focusedDay => _focusedDay;
  bool hasFocusedDay() => _focusedDay != null;

  // "avgCycleLength" field.
  int? _avgCycleLength;
  int get avgCycleLength => _avgCycleLength ?? 0;
  bool hasAvgCycleLength() => _avgCycleLength != null;

  // "lastPeriodStart" field.
  DateTime? _lastPeriodStart;
  DateTime? get lastPeriodStart => _lastPeriodStart;
  bool hasLastPeriodStart() => _lastPeriodStart != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _cycleLength = castToType<int>(snapshotData['cycleLength']);
    _prevDate = snapshotData['prevDate'] as DateTime?;
    _fitnessGoal = snapshotData['fitnessGoal'] as String?;
    _calorieGoal = castToType<int>(snapshotData['calorieGoal']);
    _proteinGoal = castToType<int>(snapshotData['proteinGoal']);
    _carbGoal = castToType<int>(snapshotData['carbGoal']);
    _fatGoal = castToType<int>(snapshotData['fatGoal']);
    _lastWorkoutDate = snapshotData['lastWorkoutDate'] as DateTime?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _totalFat = castToType<double>(snapshotData['totalFat']);
    _totalProtein = castToType<double>(snapshotData['totalProtein']);
    _totalCarbs = castToType<double>(snapshotData['totalCarbs']);
    _birthDate = snapshotData['birthDate'] as DateTime?;
    _uidd = snapshotData['uidd'] as DocumentReference?;
    _profileCompleted = snapshotData['profileCompleted'] as bool?;
    _displayName = snapshotData['display_name'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _intimateDate = snapshotData['intimateDate'] as DateTime?;
    _hasLoggedRestToday = snapshotData['hasLoggedRestToday'] as bool?;
    _hasLoggedWorkoutToday = snapshotData['hasLoggedWorkoutToday'] as bool?;
    _dayOfPhase = castToType<int>(snapshotData['dayOfPhase']);
    _phaseName = snapshotData['phaseName'] as String?;
    _mood = snapshotData['Mood'] as String?;
    _focusedDay = snapshotData['focusedDay'] as DateTime?;
    _avgCycleLength = castToType<int>(snapshotData['avgCycleLength']);
    _lastPeriodStart = snapshotData['lastPeriodStart'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userss');

  static Stream<UserssRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserssRecord.fromSnapshot(s));

  static Future<UserssRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserssRecord.fromSnapshot(s));

  static UserssRecord fromSnapshot(DocumentSnapshot snapshot) => UserssRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserssRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserssRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserssRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserssRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserssRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? cycleLength,
  DateTime? prevDate,
  String? fitnessGoal,
  int? calorieGoal,
  int? proteinGoal,
  int? carbGoal,
  int? fatGoal,
  DateTime? lastWorkoutDate,
  double? height,
  double? weight,
  double? totalFat,
  double? totalProtein,
  double? totalCarbs,
  DateTime? birthDate,
  DocumentReference? uidd,
  bool? profileCompleted,
  String? displayName,
  DateTime? startDate,
  DateTime? endDate,
  DateTime? intimateDate,
  bool? hasLoggedRestToday,
  bool? hasLoggedWorkoutToday,
  int? dayOfPhase,
  String? phaseName,
  String? mood,
  DateTime? focusedDay,
  int? avgCycleLength,
  DateTime? lastPeriodStart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'cycleLength': cycleLength,
      'prevDate': prevDate,
      'fitnessGoal': fitnessGoal,
      'calorieGoal': calorieGoal,
      'proteinGoal': proteinGoal,
      'carbGoal': carbGoal,
      'fatGoal': fatGoal,
      'lastWorkoutDate': lastWorkoutDate,
      'height': height,
      'weight': weight,
      'totalFat': totalFat,
      'totalProtein': totalProtein,
      'totalCarbs': totalCarbs,
      'birthDate': birthDate,
      'uidd': uidd,
      'profileCompleted': profileCompleted,
      'display_name': displayName,
      'startDate': startDate,
      'endDate': endDate,
      'intimateDate': intimateDate,
      'hasLoggedRestToday': hasLoggedRestToday,
      'hasLoggedWorkoutToday': hasLoggedWorkoutToday,
      'dayOfPhase': dayOfPhase,
      'phaseName': phaseName,
      'Mood': mood,
      'focusedDay': focusedDay,
      'avgCycleLength': avgCycleLength,
      'lastPeriodStart': lastPeriodStart,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserssRecordDocumentEquality implements Equality<UserssRecord> {
  const UserssRecordDocumentEquality();

  @override
  bool equals(UserssRecord? e1, UserssRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.cycleLength == e2?.cycleLength &&
        e1?.prevDate == e2?.prevDate &&
        e1?.fitnessGoal == e2?.fitnessGoal &&
        e1?.calorieGoal == e2?.calorieGoal &&
        e1?.proteinGoal == e2?.proteinGoal &&
        e1?.carbGoal == e2?.carbGoal &&
        e1?.fatGoal == e2?.fatGoal &&
        e1?.lastWorkoutDate == e2?.lastWorkoutDate &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.totalFat == e2?.totalFat &&
        e1?.totalProtein == e2?.totalProtein &&
        e1?.totalCarbs == e2?.totalCarbs &&
        e1?.birthDate == e2?.birthDate &&
        e1?.uidd == e2?.uidd &&
        e1?.profileCompleted == e2?.profileCompleted &&
        e1?.displayName == e2?.displayName &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.intimateDate == e2?.intimateDate &&
        e1?.hasLoggedRestToday == e2?.hasLoggedRestToday &&
        e1?.hasLoggedWorkoutToday == e2?.hasLoggedWorkoutToday &&
        e1?.dayOfPhase == e2?.dayOfPhase &&
        e1?.phaseName == e2?.phaseName &&
        e1?.mood == e2?.mood &&
        e1?.focusedDay == e2?.focusedDay &&
        e1?.avgCycleLength == e2?.avgCycleLength &&
        e1?.lastPeriodStart == e2?.lastPeriodStart;
  }

  @override
  int hash(UserssRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.cycleLength,
        e?.prevDate,
        e?.fitnessGoal,
        e?.calorieGoal,
        e?.proteinGoal,
        e?.carbGoal,
        e?.fatGoal,
        e?.lastWorkoutDate,
        e?.height,
        e?.weight,
        e?.totalFat,
        e?.totalProtein,
        e?.totalCarbs,
        e?.birthDate,
        e?.uidd,
        e?.profileCompleted,
        e?.displayName,
        e?.startDate,
        e?.endDate,
        e?.intimateDate,
        e?.hasLoggedRestToday,
        e?.hasLoggedWorkoutToday,
        e?.dayOfPhase,
        e?.phaseName,
        e?.mood,
        e?.focusedDay,
        e?.avgCycleLength,
        e?.lastPeriodStart
      ]);

  @override
  bool isValidKey(Object? o) => o is UserssRecord;
}
