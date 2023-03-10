// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calls_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CallsRecord> _$callsRecordSerializer = new _$CallsRecordSerializer();

class _$CallsRecordSerializer implements StructuredSerializer<CallsRecord> {
  @override
  final Iterable<Type> types = const [CallsRecord, _$CallsRecord];
  @override
  final String wireName = 'CallsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CallsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.callerPath;
    if (value != null) {
      result
        ..add('caller_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediatorPath;
    if (value != null) {
      result
        ..add('mediator_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.callerDisplayName;
    if (value != null) {
      result
        ..add('caller_display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediatorDisplayName;
    if (value != null) {
      result
        ..add('mediator_display_name')
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
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docid;
    if (value != null) {
      result
        ..add('docid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CallsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CallsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'caller_path':
          result.callerPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediator_path':
          result.mediatorPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'caller_display_name':
          result.callerDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediator_display_name':
          result.mediatorDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'docid':
          result.docid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CallsRecord extends CallsRecord {
  @override
  final String callerPath;
  @override
  final String mediatorPath;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String option;
  @override
  final BuiltList<String> topics;
  @override
  final String comment;
  @override
  final String callerDisplayName;
  @override
  final String mediatorDisplayName;
  @override
  final BuiltList<String> languages;
  @override
  final String state;
  @override
  final String docid;

  factory _$CallsRecord([void Function(CallsRecordBuilder) updates]) =>
      (new CallsRecordBuilder()..update(updates)).build();

  _$CallsRecord._(
      {this.callerPath,
      this.mediatorPath,
      this.start,
      this.end,
      this.option,
      this.topics,
      this.comment,
      this.callerDisplayName,
      this.mediatorDisplayName,
      this.languages,
      this.state,
      this.docid})
      : super._();

  @override
  CallsRecord rebuild(void Function(CallsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallsRecordBuilder toBuilder() => new CallsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallsRecord &&
        callerPath == other.callerPath &&
        mediatorPath == other.mediatorPath &&
        start == other.start &&
        end == other.end &&
        option == other.option &&
        topics == other.topics &&
        comment == other.comment &&
        callerDisplayName == other.callerDisplayName &&
        mediatorDisplayName == other.mediatorDisplayName &&
        languages == other.languages &&
        state == other.state &&
        docid == other.docid;
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, callerPath.hashCode),
                                                mediatorPath.hashCode),
                                            start.hashCode),
                                        end.hashCode),
                                    option.hashCode),
                                topics.hashCode),
                            comment.hashCode),
                        callerDisplayName.hashCode),
                    mediatorDisplayName.hashCode),
                languages.hashCode),
            state.hashCode),
        docid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CallsRecord')
          ..add('callerPath', callerPath)
          ..add('mediatorPath', mediatorPath)
          ..add('start', start)
          ..add('end', end)
          ..add('option', option)
          ..add('topics', topics)
          ..add('comment', comment)
          ..add('callerDisplayName', callerDisplayName)
          ..add('mediatorDisplayName', mediatorDisplayName)
          ..add('languages', languages)
          ..add('state', state)
          ..add('docid', docid))
        .toString();
  }
}

class CallsRecordBuilder implements Builder<CallsRecord, CallsRecordBuilder> {
  _$CallsRecord _$v;

  String _callerPath;
  String get callerPath => _$this._callerPath;
  set callerPath(String callerPath) => _$this._callerPath = callerPath;

  String _mediatorPath;
  String get mediatorPath => _$this._mediatorPath;
  set mediatorPath(String mediatorPath) => _$this._mediatorPath = mediatorPath;

  DateTime _start;
  DateTime get start => _$this._start;
  set start(DateTime start) => _$this._start = start;

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

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  String _callerDisplayName;
  String get callerDisplayName => _$this._callerDisplayName;
  set callerDisplayName(String callerDisplayName) =>
      _$this._callerDisplayName = callerDisplayName;

  String _mediatorDisplayName;
  String get mediatorDisplayName => _$this._mediatorDisplayName;
  set mediatorDisplayName(String mediatorDisplayName) =>
      _$this._mediatorDisplayName = mediatorDisplayName;

  ListBuilder<String> _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String> languages) => _$this._languages = languages;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _docid;
  String get docid => _$this._docid;
  set docid(String docid) => _$this._docid = docid;

  CallsRecordBuilder() {
    CallsRecord._initializeBuilder(this);
  }

  CallsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _callerPath = $v.callerPath;
      _mediatorPath = $v.mediatorPath;
      _start = $v.start;
      _end = $v.end;
      _option = $v.option;
      _topics = $v.topics?.toBuilder();
      _comment = $v.comment;
      _callerDisplayName = $v.callerDisplayName;
      _mediatorDisplayName = $v.mediatorDisplayName;
      _languages = $v.languages?.toBuilder();
      _state = $v.state;
      _docid = $v.docid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CallsRecord;
  }

  @override
  void update(void Function(CallsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CallsRecord build() {
    _$CallsRecord _$result;
    try {
      _$result = _$v ??
          new _$CallsRecord._(
              callerPath: callerPath,
              mediatorPath: mediatorPath,
              start: start,
              end: end,
              option: option,
              topics: _topics?.build(),
              comment: comment,
              callerDisplayName: callerDisplayName,
              mediatorDisplayName: mediatorDisplayName,
              languages: _languages?.build(),
              state: state,
              docid: docid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topics';
        _topics?.build();

        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CallsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
