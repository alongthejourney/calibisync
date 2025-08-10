// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CardDetailsStruct extends FFFirebaseStruct {
  CardDetailsStruct({
    int? cardNumber,
    int? cvv,
    int? expMonth,
    int? expYear,
    String? cardType,
    bool? expired,
    DocumentReference? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cardNumber = cardNumber,
        _cvv = cvv,
        _expMonth = expMonth,
        _expYear = expYear,
        _cardType = cardType,
        _expired = expired,
        _uid = uid,
        super(firestoreUtilData);

  // "cardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  set cardNumber(int? val) => _cardNumber = val;

  void incrementCardNumber(int amount) => cardNumber = cardNumber + amount;

  bool hasCardNumber() => _cardNumber != null;

  // "CVV" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  set cvv(int? val) => _cvv = val;

  void incrementCvv(int amount) => cvv = cvv + amount;

  bool hasCvv() => _cvv != null;

  // "expMonth" field.
  int? _expMonth;
  int get expMonth => _expMonth ?? 0;
  set expMonth(int? val) => _expMonth = val;

  void incrementExpMonth(int amount) => expMonth = expMonth + amount;

  bool hasExpMonth() => _expMonth != null;

  // "expYear" field.
  int? _expYear;
  int get expYear => _expYear ?? 0;
  set expYear(int? val) => _expYear = val;

  void incrementExpYear(int amount) => expYear = expYear + amount;

  bool hasExpYear() => _expYear != null;

  // "cardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;

  bool hasCardType() => _cardType != null;

  // "expired" field.
  bool? _expired;
  bool get expired => _expired ?? false;
  set expired(bool? val) => _expired = val;

  bool hasExpired() => _expired != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  static CardDetailsStruct fromMap(Map<String, dynamic> data) =>
      CardDetailsStruct(
        cardNumber: castToType<int>(data['cardNumber']),
        cvv: castToType<int>(data['CVV']),
        expMonth: castToType<int>(data['expMonth']),
        expYear: castToType<int>(data['expYear']),
        cardType: data['cardType'] as String?,
        expired: data['expired'] as bool?,
        uid: data['uid'] as DocumentReference?,
      );

  static CardDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? CardDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cardNumber': _cardNumber,
        'CVV': _cvv,
        'expMonth': _expMonth,
        'expYear': _expYear,
        'cardType': _cardType,
        'expired': _expired,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cardNumber': serializeParam(
          _cardNumber,
          ParamType.int,
        ),
        'CVV': serializeParam(
          _cvv,
          ParamType.int,
        ),
        'expMonth': serializeParam(
          _expMonth,
          ParamType.int,
        ),
        'expYear': serializeParam(
          _expYear,
          ParamType.int,
        ),
        'cardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'expired': serializeParam(
          _expired,
          ParamType.bool,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CardDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardDetailsStruct(
        cardNumber: deserializeParam(
          data['cardNumber'],
          ParamType.int,
          false,
        ),
        cvv: deserializeParam(
          data['CVV'],
          ParamType.int,
          false,
        ),
        expMonth: deserializeParam(
          data['expMonth'],
          ParamType.int,
          false,
        ),
        expYear: deserializeParam(
          data['expYear'],
          ParamType.int,
          false,
        ),
        cardType: deserializeParam(
          data['cardType'],
          ParamType.String,
          false,
        ),
        expired: deserializeParam(
          data['expired'],
          ParamType.bool,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['userss'],
        ),
      );

  @override
  String toString() => 'CardDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardDetailsStruct &&
        cardNumber == other.cardNumber &&
        cvv == other.cvv &&
        expMonth == other.expMonth &&
        expYear == other.expYear &&
        cardType == other.cardType &&
        expired == other.expired &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cardNumber, cvv, expMonth, expYear, cardType, expired, uid]);
}

CardDetailsStruct createCardDetailsStruct({
  int? cardNumber,
  int? cvv,
  int? expMonth,
  int? expYear,
  String? cardType,
  bool? expired,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardDetailsStruct(
      cardNumber: cardNumber,
      cvv: cvv,
      expMonth: expMonth,
      expYear: expYear,
      cardType: cardType,
      expired: expired,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardDetailsStruct? updateCardDetailsStruct(
  CardDetailsStruct? cardDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cardDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardDetailsStructData(
  Map<String, dynamic> firestoreData,
  CardDetailsStruct? cardDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cardDetails == null) {
    return;
  }
  if (cardDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cardDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardDetailsData =
      getCardDetailsFirestoreData(cardDetails, forFieldValue);
  final nestedData =
      cardDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cardDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardDetailsFirestoreData(
  CardDetailsStruct? cardDetails, [
  bool forFieldValue = false,
]) {
  if (cardDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cardDetails.toMap());

  // Add any Firestore field values
  cardDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardDetailsListFirestoreData(
  List<CardDetailsStruct>? cardDetailss,
) =>
    cardDetailss?.map((e) => getCardDetailsFirestoreData(e, true)).toList() ??
    [];
