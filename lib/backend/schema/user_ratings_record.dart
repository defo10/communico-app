import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_ratings_record.g.dart';

abstract class UserRatingsRecord
    implements Built<UserRatingsRecord, UserRatingsRecordBuilder> {
  static Serializer<UserRatingsRecord> get serializer =>
      _$userRatingsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'rating_user')
  DocumentReference get ratingUser;

  @nullable
  @BuiltValueField(wireName: 'rated_mediator')
  DocumentReference get ratedMediator;

  @nullable
  double get rating;

  @nullable
  BuiltList<String> get flags;

  @nullable
  @BuiltValueField(wireName: 'rating_user_display_name')
  String get ratingUserDisplayName;

  @nullable
  String get comment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserRatingsRecordBuilder builder) => builder
    ..rating = 0.0
    ..flags = ListBuilder()
    ..ratingUserDisplayName = ''
    ..comment = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_ratings');

  static Stream<UserRatingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserRatingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserRatingsRecord._();
  factory UserRatingsRecord([void Function(UserRatingsRecordBuilder) updates]) =
      _$UserRatingsRecord;

  static UserRatingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserRatingsRecordData({
  DocumentReference ratingUser,
  DocumentReference ratedMediator,
  double rating,
  String ratingUserDisplayName,
  String comment,
}) =>
    serializers.toFirestore(
        UserRatingsRecord.serializer,
        UserRatingsRecord((u) => u
          ..ratingUser = ratingUser
          ..ratedMediator = ratedMediator
          ..rating = rating
          ..flags = null
          ..ratingUserDisplayName = ratingUserDisplayName
          ..comment = comment));
