import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

import 'tokens.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  String get password;

  String get uid;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'aggregated_rating')
  double get aggregatedRating;

  @nullable
  @BuiltValueField(wireName: 'total_ratings')
  int get totalRatings;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  @nullable
  BuiltList<TokensRecord> get tokens;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..password = ''
    ..uid = ''
    ..phoneNumber = ''
    ..photoUrl = ''
    ..aggregatedRating = 0.0
    ..totalRatings = 0
    ..tokens = ListBuilder<TokensRecord>();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String displayName,
  String email,
  String password,
  String uid,
  String phoneNumber,
  String photoUrl,
  DateTime createdTime,
  double aggregatedRating,
  int totalRatings,
  List<TokensRecord> tokens,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..displayName = displayName
          ..email = email
          ..password = password
          ..uid = uid
          ..phoneNumber = phoneNumber
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..aggregatedRating = aggregatedRating
          ..totalRatings = totalRatings
          ..tokens = ListBuilder<TokensRecord>(tokens)));
