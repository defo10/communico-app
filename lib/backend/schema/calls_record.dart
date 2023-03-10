import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calls_record.g.dart';

abstract class CallsRecord implements Built<CallsRecord, CallsRecordBuilder> {
  static Serializer<CallsRecord> get serializer => _$callsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'caller_path')
  String get callerPath;

  @nullable
  @BuiltValueField(wireName: 'mediator_path')
  String get mediatorPath;

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
  @BuiltValueField(wireName: 'caller_display_name')
  String get callerDisplayName;

  @nullable
  @BuiltValueField(wireName: 'mediator_display_name')
  String get mediatorDisplayName;

  @nullable
  BuiltList<String> get languages;

  @nullable
  String get state;

  @nullable
  String get docid;

  static void _initializeBuilder(CallsRecordBuilder builder) => builder
    ..option = ''
    ..topics = ListBuilder()
    ..comment = ''
    ..callerDisplayName = ''
    ..mediatorDisplayName = ''
    ..languages = ListBuilder()
    ..state = '';

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
  String callerPath,
  String mediatorPath,
  DateTime start,
  DateTime end,
  String option,
  String comment,
  String callerDisplayName,
  String mediatorDisplayName,
  String state,
}) =>
    serializers.toFirestore(
        CallsRecord.serializer,
        CallsRecord((c) => c
          ..callerPath = callerPath
          ..mediatorPath = mediatorPath
          ..start = start
          ..end = end
          ..option = option
          ..topics = null
          ..comment = comment
          ..callerDisplayName = callerDisplayName
          ..mediatorDisplayName = mediatorDisplayName
          ..languages = null
          ..state = state));
