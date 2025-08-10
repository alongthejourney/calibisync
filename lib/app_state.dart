import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _nickName = await secureStorage.getString('ff_nickName') ?? _nickName;
    });
    await _safeInitAsync(() async {
      _cyclePhase =
          await secureStorage.getString('ff_cyclePhase') ?? _cyclePhase;
    });
    await _safeInitAsync(() async {
      _cycleDay = await secureStorage.getInt('ff_cycleDay') ?? _cycleDay;
    });
    await _safeInitAsync(() async {
      _startDate = await secureStorage.read(key: 'ff_startDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_startDate'))!)
          : _startDate;
    });
    await _safeInitAsync(() async {
      _endDate = await secureStorage.read(key: 'ff_endDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_endDate'))!)
          : _endDate;
    });
    await _safeInitAsync(() async {
      _cycleLength =
          await secureStorage.getInt('ff_cycleLength') ?? _cycleLength;
    });
    await _safeInitAsync(() async {
      _selectMuscleGroup =
          await secureStorage.getString('ff_selectMuscleGroup') ??
              _selectMuscleGroup;
    });
    await _safeInitAsync(() async {
      _currentWorkout =
          await secureStorage.getString('ff_currentWorkout') ?? _currentWorkout;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_prevWorkoutData') != null) {
        try {
          _prevWorkoutData = jsonDecode(
              await secureStorage.getString('ff_prevWorkoutData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _notificationsOn =
          await secureStorage.getBool('ff_notificationsOn') ?? _notificationsOn;
    });
    await _safeInitAsync(() async {
      _themePreference = await secureStorage.getString('ff_themePreference') ??
          _themePreference;
    });
    await _safeInitAsync(() async {
      _storeDate = await secureStorage.read(key: 'ff_storeDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_storeDate'))!)
          : _storeDate;
    });
    await _safeInitAsync(() async {
      _lastMealLogDate =
          await secureStorage.read(key: 'ff_lastMealLogDate') != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  (await secureStorage.getInt('ff_lastMealLogDate'))!)
              : _lastMealLogDate;
    });
    await _safeInitAsync(() async {
      _userHeight = await secureStorage.getInt('ff_userHeight') ?? _userHeight;
    });
    await _safeInitAsync(() async {
      _userWeight = await secureStorage.getInt('ff_userWeight') ?? _userWeight;
    });
    await _safeInitAsync(() async {
      _userAge = await secureStorage.getInt('ff_userAge') ?? _userAge;
    });
    await _safeInitAsync(() async {
      _activityLevel =
          await secureStorage.getString('ff_activityLevel') ?? _activityLevel;
    });
    await _safeInitAsync(() async {
      _weightGoal =
          await secureStorage.getString('ff_weightGoal') ?? _weightGoal;
    });
    await _safeInitAsync(() async {
      _isLoggingStartDate =
          await secureStorage.getBool('ff_isLoggingStartDate') ??
              _isLoggingStartDate;
    });
    await _safeInitAsync(() async {
      _intimateDate = await secureStorage.read(key: 'ff_intimateDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_intimateDate'))!)
          : _intimateDate;
    });
    await _safeInitAsync(() async {
      _currentPeriodDays = (await secureStorage
                  .getStringList('ff_currentPeriodDays'))
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _currentPeriodDays;
    });
    await _safeInitAsync(() async {
      _predictedPeriodDays = (await secureStorage
                  .getStringList('ff_predictedPeriodDays'))
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _predictedPeriodDays;
    });
    await _safeInitAsync(() async {
      _prevDate = await secureStorage.read(key: 'ff_prevDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_prevDate'))!)
          : _prevDate;
    });
    await _safeInitAsync(() async {
      _previousStartDate =
          await secureStorage.read(key: 'ff_previousStartDate') != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  (await secureStorage.getInt('ff_previousStartDate'))!)
              : _previousStartDate;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _nickName = '';
  String get nickName => _nickName;
  set nickName(String value) {
    _nickName = value;
    secureStorage.setString('ff_nickName', value);
  }

  void deleteNickName() {
    secureStorage.delete(key: 'ff_nickName');
  }

  String _cyclePhase = 'Menstrual';
  String get cyclePhase => _cyclePhase;
  set cyclePhase(String value) {
    _cyclePhase = value;
    secureStorage.setString('ff_cyclePhase', value);
  }

  void deleteCyclePhase() {
    secureStorage.delete(key: 'ff_cyclePhase');
  }

  int _cycleDay = 1;
  int get cycleDay => _cycleDay;
  set cycleDay(int value) {
    _cycleDay = value;
    secureStorage.setInt('ff_cycleDay', value);
  }

  void deleteCycleDay() {
    secureStorage.delete(key: 'ff_cycleDay');
  }

  DateTime? _startDate = DateTime.fromMillisecondsSinceEpoch(1741794660000);
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
    value != null
        ? secureStorage.setInt('ff_startDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_startDate');
  }

  void deleteStartDate() {
    secureStorage.delete(key: 'ff_startDate');
  }

  DateTime? _endDate = DateTime.fromMillisecondsSinceEpoch(1741794660000);
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
    value != null
        ? secureStorage.setInt('ff_endDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_endDate');
  }

  void deleteEndDate() {
    secureStorage.delete(key: 'ff_endDate');
  }

  /// Duration of user's cycle in days
  int _cycleLength = 28;
  int get cycleLength => _cycleLength;
  set cycleLength(int value) {
    _cycleLength = value;
    secureStorage.setInt('ff_cycleLength', value);
  }

  void deleteCycleLength() {
    secureStorage.delete(key: 'ff_cycleLength');
  }

  /// Current selected muscle group
  String _selectMuscleGroup = '\"glutes\"';
  String get selectMuscleGroup => _selectMuscleGroup;
  set selectMuscleGroup(String value) {
    _selectMuscleGroup = value;
    secureStorage.setString('ff_selectMuscleGroup', value);
  }

  void deleteSelectMuscleGroup() {
    secureStorage.delete(key: 'ff_selectMuscleGroup');
  }

  /// Current active workout names
  String _currentWorkout = '';
  String get currentWorkout => _currentWorkout;
  set currentWorkout(String value) {
    _currentWorkout = value;
    secureStorage.setString('ff_currentWorkout', value);
  }

  void deleteCurrentWorkout() {
    secureStorage.delete(key: 'ff_currentWorkout');
  }

  /// Data from previous workouts
  dynamic _prevWorkoutData = jsonDecode('{}');
  dynamic get prevWorkoutData => _prevWorkoutData;
  set prevWorkoutData(dynamic value) {
    _prevWorkoutData = value;
    secureStorage.setString('ff_prevWorkoutData', jsonEncode(value));
  }

  void deletePrevWorkoutData() {
    secureStorage.delete(key: 'ff_prevWorkoutData');
  }

  /// Temporary symptom to log
  List<String> _selectedSymptoms = [];
  List<String> get selectedSymptoms => _selectedSymptoms;
  set selectedSymptoms(List<String> value) {
    _selectedSymptoms = value;
  }

  void addToSelectedSymptoms(String value) {
    selectedSymptoms.add(value);
  }

  void removeFromSelectedSymptoms(String value) {
    selectedSymptoms.remove(value);
  }

  void removeAtIndexFromSelectedSymptoms(int index) {
    selectedSymptoms.removeAt(index);
  }

  void updateSelectedSymptomsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedSymptoms[index] = updateFn(_selectedSymptoms[index]);
  }

  void insertAtIndexInSelectedSymptoms(int index, String value) {
    selectedSymptoms.insert(index, value);
  }

  DateTime? _symptomLogDate;
  DateTime? get symptomLogDate => _symptomLogDate;
  set symptomLogDate(DateTime? value) {
    _symptomLogDate = value;
  }

  /// Allow users to enable/disable notifications
  bool _notificationsOn = false;
  bool get notificationsOn => _notificationsOn;
  set notificationsOn(bool value) {
    _notificationsOn = value;
    secureStorage.setBool('ff_notificationsOn', value);
  }

  void deleteNotificationsOn() {
    secureStorage.delete(key: 'ff_notificationsOn');
  }

  /// Theme setting (light or dark mode)
  String _themePreference = '';
  String get themePreference => _themePreference;
  set themePreference(String value) {
    _themePreference = value;
    secureStorage.setString('ff_themePreference', value);
  }

  void deleteThemePreference() {
    secureStorage.delete(key: 'ff_themePreference');
  }

  /// User's daily calorie intake
  int _dailyCalories = 0;
  int get dailyCalories => _dailyCalories;
  set dailyCalories(int value) {
    _dailyCalories = value;
  }

  DateTime? _storeDate = DateTime.fromMillisecondsSinceEpoch(1741795260000);
  DateTime? get storeDate => _storeDate;
  set storeDate(DateTime? value) {
    _storeDate = value;
    value != null
        ? secureStorage.setInt('ff_storeDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_storeDate');
  }

  void deleteStoreDate() {
    secureStorage.delete(key: 'ff_storeDate');
  }

  int _dailyProtein = 0;
  int get dailyProtein => _dailyProtein;
  set dailyProtein(int value) {
    _dailyProtein = value;
  }

  int _dailyCarbs = 0;
  int get dailyCarbs => _dailyCarbs;
  set dailyCarbs(int value) {
    _dailyCarbs = value;
  }

  int _dailyFat = 0;
  int get dailyFat => _dailyFat;
  set dailyFat(int value) {
    _dailyFat = value;
  }

  DateTime? _lastMealLogDate;
  DateTime? get lastMealLogDate => _lastMealLogDate;
  set lastMealLogDate(DateTime? value) {
    _lastMealLogDate = value;
    value != null
        ? secureStorage.setInt(
            'ff_lastMealLogDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_lastMealLogDate');
  }

  void deleteLastMealLogDate() {
    secureStorage.delete(key: 'ff_lastMealLogDate');
  }

  int _userHeight = 0;
  int get userHeight => _userHeight;
  set userHeight(int value) {
    _userHeight = value;
    secureStorage.setInt('ff_userHeight', value);
  }

  void deleteUserHeight() {
    secureStorage.delete(key: 'ff_userHeight');
  }

  int _userWeight = 0;
  int get userWeight => _userWeight;
  set userWeight(int value) {
    _userWeight = value;
    secureStorage.setInt('ff_userWeight', value);
  }

  void deleteUserWeight() {
    secureStorage.delete(key: 'ff_userWeight');
  }

  int _userAge = 0;
  int get userAge => _userAge;
  set userAge(int value) {
    _userAge = value;
    secureStorage.setInt('ff_userAge', value);
  }

  void deleteUserAge() {
    secureStorage.delete(key: 'ff_userAge');
  }

  String _activityLevel = '';
  String get activityLevel => _activityLevel;
  set activityLevel(String value) {
    _activityLevel = value;
    secureStorage.setString('ff_activityLevel', value);
  }

  void deleteActivityLevel() {
    secureStorage.delete(key: 'ff_activityLevel');
  }

  String _weightGoal = '';
  String get weightGoal => _weightGoal;
  set weightGoal(String value) {
    _weightGoal = value;
    secureStorage.setString('ff_weightGoal', value);
  }

  void deleteWeightGoal() {
    secureStorage.delete(key: 'ff_weightGoal');
  }

  bool _isLoggingStartDate = false;
  bool get isLoggingStartDate => _isLoggingStartDate;
  set isLoggingStartDate(bool value) {
    _isLoggingStartDate = value;
    secureStorage.setBool('ff_isLoggingStartDate', value);
  }

  void deleteIsLoggingStartDate() {
    secureStorage.delete(key: 'ff_isLoggingStartDate');
  }

  DateTime? _intimateDate;
  DateTime? get intimateDate => _intimateDate;
  set intimateDate(DateTime? value) {
    _intimateDate = value;
    value != null
        ? secureStorage.setInt('ff_intimateDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_intimateDate');
  }

  void deleteIntimateDate() {
    secureStorage.delete(key: 'ff_intimateDate');
  }

  /// store dates between start and end dates
  List<DateTime> _currentPeriodDays = [];
  List<DateTime> get currentPeriodDays => _currentPeriodDays;
  set currentPeriodDays(List<DateTime> value) {
    _currentPeriodDays = value;
    secureStorage.setStringList('ff_currentPeriodDays',
        value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void deleteCurrentPeriodDays() {
    secureStorage.delete(key: 'ff_currentPeriodDays');
  }

  void addToCurrentPeriodDays(DateTime value) {
    currentPeriodDays.add(value);
    secureStorage.setStringList(
        'ff_currentPeriodDays',
        _currentPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeFromCurrentPeriodDays(DateTime value) {
    currentPeriodDays.remove(value);
    secureStorage.setStringList(
        'ff_currentPeriodDays',
        _currentPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeAtIndexFromCurrentPeriodDays(int index) {
    currentPeriodDays.removeAt(index);
    secureStorage.setStringList(
        'ff_currentPeriodDays',
        _currentPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void updateCurrentPeriodDaysAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    currentPeriodDays[index] = updateFn(_currentPeriodDays[index]);
    secureStorage.setStringList(
        'ff_currentPeriodDays',
        _currentPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void insertAtIndexInCurrentPeriodDays(int index, DateTime value) {
    currentPeriodDays.insert(index, value);
    secureStorage.setStringList(
        'ff_currentPeriodDays',
        _currentPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  /// Stores predicted future period dates
  List<DateTime> _predictedPeriodDays = [];
  List<DateTime> get predictedPeriodDays => _predictedPeriodDays;
  set predictedPeriodDays(List<DateTime> value) {
    _predictedPeriodDays = value;
    secureStorage.setStringList('ff_predictedPeriodDays',
        value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void deletePredictedPeriodDays() {
    secureStorage.delete(key: 'ff_predictedPeriodDays');
  }

  void addToPredictedPeriodDays(DateTime value) {
    predictedPeriodDays.add(value);
    secureStorage.setStringList(
        'ff_predictedPeriodDays',
        _predictedPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeFromPredictedPeriodDays(DateTime value) {
    predictedPeriodDays.remove(value);
    secureStorage.setStringList(
        'ff_predictedPeriodDays',
        _predictedPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeAtIndexFromPredictedPeriodDays(int index) {
    predictedPeriodDays.removeAt(index);
    secureStorage.setStringList(
        'ff_predictedPeriodDays',
        _predictedPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void updatePredictedPeriodDaysAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    predictedPeriodDays[index] = updateFn(_predictedPeriodDays[index]);
    secureStorage.setStringList(
        'ff_predictedPeriodDays',
        _predictedPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void insertAtIndexInPredictedPeriodDays(int index, DateTime value) {
    predictedPeriodDays.insert(index, value);
    secureStorage.setStringList(
        'ff_predictedPeriodDays',
        _predictedPeriodDays
            .map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  DateTime? _prevDate;
  DateTime? get prevDate => _prevDate;
  set prevDate(DateTime? value) {
    _prevDate = value;
    value != null
        ? secureStorage.setInt('ff_prevDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_prevDate');
  }

  void deletePrevDate() {
    secureStorage.delete(key: 'ff_prevDate');
  }

  /// the start date of the user's last period
  DateTime? _previousStartDate;
  DateTime? get previousStartDate => _previousStartDate;
  set previousStartDate(DateTime? value) {
    _previousStartDate = value;
    value != null
        ? secureStorage.setInt(
            'ff_previousStartDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_previousStartDate');
  }

  void deletePreviousStartDate() {
    secureStorage.delete(key: 'ff_previousStartDate');
  }

  /// Predict the next start date
  DateTime? _predictedStartDate;
  DateTime? get predictedStartDate => _predictedStartDate;
  set predictedStartDate(DateTime? value) {
    _predictedStartDate = value;
  }

  int _daysSinceStartDate = 0;
  int get daysSinceStartDate => _daysSinceStartDate;
  set daysSinceStartDate(int value) {
    _daysSinceStartDate = value;
  }

  /// daysSinceStartDate % 28
  int _dayInCycle = 0;
  int get dayInCycle => _dayInCycle;
  set dayInCycle(int value) {
    _dayInCycle = value;
  }

  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? value) {
    _uid = value;
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
