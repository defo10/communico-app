import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'online_pool_record.g.dart';

abstract class OnlinePoolRecord
    implements Built<OnlinePoolRecord, OnlinePoolRecordBuilder> {
  static Serializer<OnlinePoolRecord> get serializer =>
      _$onlinePoolRecordSerializer;

  @nullable
  DocumentReference get mediator;

  @nullable
  DateTime get end;

  @nullable
  String get option;

  @nullable
  BuiltList<String> get topics;

  @nullable
  DocumentReference get caller;

  @nullable
  DateTime get start;

  @nullable
  BuiltList<String> get languages;

  @nullable
  String get state;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  @nullable
  String get fcmToken;

  static void _initializeBuilder(OnlinePoolRecordBuilder builder) => builder
    ..option = ''
    ..topics = ListBuilder()
    ..languages = ListBuilder()
    ..state = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('online_pool');

  static Stream<OnlinePoolRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OnlinePoolRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OnlinePoolRecord._();
  factory OnlinePoolRecord([void Function(OnlinePoolRecordBuilder) updates]) =
      _$OnlinePoolRecord;

  static OnlinePoolRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOnlinePoolRecordData({
  DocumentReference mediator,
  DateTime end,
  String option,
  DocumentReference caller,
  DateTime start,
  String state,
  String fcmToken
}) =>
    serializers.toFirestore(
        OnlinePoolRecord.serializer,
        OnlinePoolRecord((o) => o
          ..mediator = mediator
          ..end = end
          ..option = option
          ..topics = null
          ..caller = caller
          ..start = start
          ..languages = null
          ..state = state
          ..fcmToken = fcmToken));
