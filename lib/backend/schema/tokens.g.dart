// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokensRecord> _$tokensRecordSerializer =
    new _$TokensRecordSerializer();

class _$TokensRecordSerializer implements StructuredSerializer<TokensRecord> {
  @override
  final Iterable<Type> types = const [TokensRecord, _$TokensRecord];
  @override
  final String wireName = 'TokensRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TokensRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.fcmToken;
    if (value != null) {
      result
        ..add('fcm_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TokensRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokensRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'fcm_token':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$TokensRecord extends TokensRecord {
  @override
  final String fcmToken;
  @override
  final DateTime createdTime;

  factory _$TokensRecord([void Function(TokensRecordBuilder) updates]) =>
      (new TokensRecordBuilder()..update(updates)).build();

  _$TokensRecord._({this.fcmToken, this.createdTime}) : super._();

  @override
  TokensRecord rebuild(void Function(TokensRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokensRecordBuilder toBuilder() => new TokensRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokensRecord &&
        fcmToken == other.fcmToken &&
        createdTime == other.createdTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, fcmToken.hashCode), createdTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokensRecord')
          ..add('fcmToken', fcmToken)
          ..add('createdTime', createdTime))
        .toString();
  }
}

class TokensRecordBuilder
    implements Builder<TokensRecord, TokensRecordBuilder> {
  _$TokensRecord _$v;

  String _fcmToken;
  String get fcmToken => _$this._fcmToken;
  set fcmToken(String fcmToken) => _$this._fcmToken = fcmToken;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  TokensRecordBuilder();

  TokensRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _createdTime = $v.createdTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokensRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokensRecord;
  }

  @override
  void update(void Function(TokensRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokensRecord build() {
    final _$result = _$v ??
        new _$TokensRecord._(fcmToken: fcmToken, createdTime: createdTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
