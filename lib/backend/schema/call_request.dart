import 'package:built_value/built_value.dart';

import '../backend.dart';

part 'call_request.g.dart';

/// Request to initiate call. All user infos are handled over auth
/// and send to the firebase context in cloud functions.
abstract class CallRequest implements Built<CallRequest, CallRequestBuilder> {
  static Serializer<CallRequest> get serializer => _$callRequestSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_caller_name')
  String get displayCallerName;

  @nullable
  String get caller;

  @nullable
  BuiltList<String> get languages;

  @nullable
  BuiltList<String> get topics;

  @nullable
  String get comment;

  CallRequest._();
  factory CallRequest([void Function(CallRequestBuilder) updates]) = _$CallRequest;
}

Map<String, dynamic> createCallRequestData({
  List<String> topics,
  String comment,
  String displayCallerName,
  String caller,
  List<String> languages
}) =>
    serializers.toFirestore(
        CallRequest.serializer,
        CallRequest((c) => c
          ..topics = ListBuilder(topics)
          ..comment = comment
          ..displayCallerName = displayCallerName
          ..caller = caller
          ..languages = ListBuilder(languages)));
