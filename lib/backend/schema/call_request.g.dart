// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CallRequest> _$callRequestSerializer = new _$CallRequestSerializer();

class _$CallRequestSerializer implements StructuredSerializer<CallRequest> {
  @override
  final Iterable<Type> types = const [CallRequest, _$CallRequest];
  @override
  final String wireName = 'CallRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, CallRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayCallerName;
    if (value != null) {
      result
        ..add('display_caller_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caller;
    if (value != null) {
      result
        ..add('caller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.topics;
    if (value != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CallRequest deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CallRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_caller_name':
          result.displayCallerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'caller':
          result.caller = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CallRequest extends CallRequest {
  @override
  final String displayCallerName;
  @override
  final String caller;
  @override
  final BuiltList<String> languages;
  @override
  final BuiltList<String> topics;
  @override
  final String comment;

  factory _$CallRequest([void Function(CallRequestBuilder) updates]) =>
      (new CallRequestBuilder()..update(updates)).build();

  _$CallRequest._(
      {this.displayCallerName,
      this.caller,
      this.languages,
      this.topics,
      this.comment})
      : super._();

  @override
  CallRequest rebuild(void Function(CallRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallRequestBuilder toBuilder() => new CallRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallRequest &&
        displayCallerName == other.displayCallerName &&
        caller == other.caller &&
        languages == other.languages &&
        topics == other.topics &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, displayCallerName.hashCode), caller.hashCode),
                languages.hashCode),
            topics.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CallRequest')
          ..add('displayCallerName', displayCallerName)
          ..add('caller', caller)
          ..add('languages', languages)
          ..add('topics', topics)
          ..add('comment', comment))
        .toString();
  }
}

class CallRequestBuilder implements Builder<CallRequest, CallRequestBuilder> {
  _$CallRequest _$v;

  String _displayCallerName;
  String get displayCallerName => _$this._displayCallerName;
  set displayCallerName(String displayCallerName) =>
      _$this._displayCallerName = displayCallerName;

  String _caller;
  String get caller => _$this._caller;
  set caller(String caller) => _$this._caller = caller;

  ListBuilder<String> _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String> languages) => _$this._languages = languages;

  ListBuilder<String> _topics;
  ListBuilder<String> get topics =>
      _$this._topics ??= new ListBuilder<String>();
  set topics(ListBuilder<String> topics) => _$this._topics = topics;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  CallRequestBuilder();

  CallRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayCallerName = $v.displayCallerName;
      _caller = $v.caller;
      _languages = $v.languages?.toBuilder();
      _topics = $v.topics?.toBuilder();
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CallRequest;
  }

  @override
  void update(void Function(CallRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CallRequest build() {
    _$CallRequest _$result;
    try {
      _$result = _$v ??
          new _$CallRequest._(
              displayCallerName: displayCallerName,
              caller: caller,
              languages: _languages?.build(),
              topics: _topics?.build(),
              comment: comment);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'topics';
        _topics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CallRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
