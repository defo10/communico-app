// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_pool_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OnlinePoolRecord> _$onlinePoolRecordSerializer =
    new _$OnlinePoolRecordSerializer();

class _$OnlinePoolRecordSerializer
    implements StructuredSerializer<OnlinePoolRecord> {
  @override
  final Iterable<Type> types = const [OnlinePoolRecord, _$OnlinePoolRecord];
  @override
  final String wireName = 'OnlinePoolRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OnlinePoolRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.mediator;
    if (value != null) {
      result
        ..add('mediator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.option;
    if (value != null) {
      result
        ..add('option')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topics;
    if (value != null) {
      result
        ..add('topics')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.caller;
    if (value != null) {
      result
        ..add('caller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.fcmToken;
    if (value != null) {
      result
        ..add('fcmToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OnlinePoolRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OnlinePoolRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mediator':
          result.mediator = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'option':
          result.option = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'caller':
          result.caller = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'fcmToken':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OnlinePoolRecord extends OnlinePoolRecord {
  @override
  final DocumentReference<Object> mediator;
  @override
  final DateTime end;
  @override
  final String option;
  @override
  final BuiltList<String> topics;
  @override
  final DocumentReference<Object> caller;
  @override
  final DateTime start;
  @override
  final BuiltList<String> languages;
  @override
  final String state;
  @override
  final DocumentReference<Object> reference;
  @override
  final String fcmToken;

  factory _$OnlinePoolRecord(
          [void Function(OnlinePoolRecordBuilder) updates]) =>
      (new OnlinePoolRecordBuilder()..update(updates)).build();

  _$OnlinePoolRecord._(
      {this.mediator,
      this.end,
      this.option,
      this.topics,
      this.caller,
      this.start,
      this.languages,
      this.state,
      this.reference,
      this.fcmToken})
      : super._();

  @override
  OnlinePoolRecord rebuild(void Function(OnlinePoolRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnlinePoolRecordBuilder toBuilder() =>
      new OnlinePoolRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnlinePoolRecord &&
        mediator == other.mediator &&
        end == other.end &&
        option == other.option &&
        topics == other.topics &&
        caller == other.caller &&
        start == other.start &&
        languages == other.languages &&
        state == other.state &&
        reference == other.reference &&
        fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, mediator.hashCode),
                                        end.hashCode),
                                    option.hashCode),
                                topics.hashCode),
                            caller.hashCode),
                        start.hashCode),
                    languages.hashCode),
                state.hashCode),
            reference.hashCode),
        fcmToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnlinePoolRecord')
          ..add('mediator', mediator)
          ..add('end', end)
          ..add('option', option)
          ..add('topics', topics)
          ..add('caller', caller)
          ..add('start', start)
          ..add('languages', languages)
          ..add('state', state)
          ..add('reference', reference)
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class OnlinePoolRecordBuilder
    implements Builder<OnlinePoolRecord, OnlinePoolRecordBuilder> {
  _$OnlinePoolRecord _$v;

  DocumentReference<Object> _mediator;
  DocumentReference<Object> get mediator => _$this._mediator;
  set mediator(DocumentReference<Object> mediator) =>
      _$this._mediator = mediator;

  DateTime _end;
  DateTime get end => _$this._end;
  set end(DateTime end) => _$this._end = end;

  String _option;
  String get option => _$this._option;
  set option(String option) => _$this._option = option;

  ListBuilder<String> _topics;
  ListBuilder<String> get topics =>
      _$this._topics ??= new ListBuilder<String>();
  set topics(ListBuilder<String> topics) => _$this._topics = topics;

  DocumentReference<Object> _caller;
  DocumentReference<Object> get caller => _$this._caller;
  set caller(DocumentReference<Object> caller) => _$this._caller = caller;

  DateTime _start;
  DateTime get start => _$this._start;
  set start(DateTime start) => _$this._start = start;

  ListBuilder<String> _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String> languages) => _$this._languages = languages;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  String _fcmToken;
  String get fcmToken => _$this._fcmToken;
  set fcmToken(String fcmToken) => _$this._fcmToken = fcmToken;

  OnlinePoolRecordBuilder() {
    OnlinePoolRecord._initializeBuilder(this);
  }

  OnlinePoolRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediator = $v.mediator;
      _end = $v.end;
      _option = $v.option;
      _topics = $v.topics?.toBuilder();
      _caller = $v.caller;
      _start = $v.start;
      _languages = $v.languages?.toBuilder();
      _state = $v.state;
      _reference = $v.reference;
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnlinePoolRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnlinePoolRecord;
  }

  @override
  void update(void Function(OnlinePoolRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnlinePoolRecord build() {
    _$OnlinePoolRecord _$result;
    try {
      _$result = _$v ??
          new _$OnlinePoolRecord._(
              mediator: mediator,
              end: end,
              option: option,
              topics: _topics?.build(),
              caller: caller,
              start: start,
              languages: _languages?.build(),
              state: state,
              reference: reference,
              fcmToken: fcmToken);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topics';
        _topics?.build();

        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnlinePoolRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
