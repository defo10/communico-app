import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mediator_ratings_record.g.dart';

abstract class MediatorRatingsRecord
    implements Built<MediatorRatingsRecord, MediatorRatingsRecordBuilder> {
  static Serializer<MediatorRatingsRecord> get serializer =>
      _$mediatorRatingsRecordSerializer;

  @nullable
  DocumentReference get caller;

  @nullable
  @BuiltValueField(wireName: 'start_time')
  DateTime get startTime;

  @nullable
  @BuiltValueField(wireName: 'end_time')
  DateTime get endTime;

  @nullable
  int get rating;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MediatorRatingsRecordBuilder builder) =>
      builder..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mediator_ratings');

  static Stream<MediatorRatingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MediatorRatingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MediatorRatingsRecord._();
  factory MediatorRatingsRecord(
          [void Function(MediatorRatingsRecordBuilder) updates]) =
      _$MediatorRatingsRecord;

  static MediatorRatingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMediatorRatingsRecordData({
  DocumentReference caller,
  DateTime startTime,
  DateTime endTime,
  int rating,
}) =>
    serializers.toFirestore(
        MediatorRatingsRecord.serializer,
        MediatorRatingsRecord((m) => m
          ..caller = caller
          ..startTime = startTime
          ..endTime = endTime
          ..rating = rating));
