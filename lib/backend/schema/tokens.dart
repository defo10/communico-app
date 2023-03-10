import 'package:built_value/built_value.dart';
import 'serializers.dart';

part 'tokens.g.dart';

abstract class TokensRecord
    implements Built<TokensRecord, TokensRecordBuilder> {
  static Serializer<TokensRecord> get serializer => _$tokensRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'fcm_token')
  String get fcmToken;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  TokensRecord._();
  factory TokensRecord([void Function(TokensRecordBuilder) updates]) = _$TokensRecord;
}

Map<String, dynamic> createTokensRecordData({
  String fcmToken,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        TokensRecord.serializer,
        TokensRecord((u) => u
          ..fcmToken = fcmToken
          ..createdTime = createdTime));