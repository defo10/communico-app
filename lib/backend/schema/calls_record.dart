import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calls_record.g.dart';

abstract class CallsRecord implements Built<CallsRecord, CallsRecordBuilder> {
  static Serializer<CallsRecord> get serializer => _$callsRecordSerializer;

  @nullable
  DocumentReference get caller;

  @nullable
  DocumentReference get mediator;

  @nullable
  DateTime get start;

  @nullable
  DateTime get end;

  @nullable
  String get option;

  @nullable
  BuiltList<String> get topics;

  @nullable
  String get comment;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: 'caller_display_name')
  String get callerDisplayName;

  @nullable
  @BuiltValueField(wireName: 'mediator_display_name')
  String get mediatorDisplayName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CallsRecordBuilder builder) => builder
    ..option = ''
    ..topics = ListBuilder()
    ..comment = ''
    ..type = ''
    ..callerDisplayName = ''
    ..mediatorDisplayName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calls');

  static Stream<CallsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CallsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CallsRecord._();
  factory CallsRecord([void Function(CallsRecordBuilder) updates]) =
      _$CallsRecord;

  static CallsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCallsRecordData({
  DocumentReference caller,
  DocumentReference mediator,
  DateTime start,
  DateTime end,
  String option,
  String comment,
  String type,
  String callerDisplayName,
  String mediatorDisplayName,
}) =>
    serializers.toFirestore(
        CallsRecord.serializer,
        CallsRecord((c) => c
          ..caller = caller
          ..mediator = mediator
          ..start = start
          ..end = end
          ..option = option
          ..topics = null
          ..comment = comment
          ..type = type
          ..callerDisplayName = callerDisplayName
          ..mediatorDisplayName = mediatorDisplayName));
