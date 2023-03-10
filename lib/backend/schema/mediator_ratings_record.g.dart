// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_ratings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MediatorRatingsRecord> _$mediatorRatingsRecordSerializer =
    new _$MediatorRatingsRecordSerializer();

class _$MediatorRatingsRecordSerializer
    implements StructuredSerializer<MediatorRatingsRecord> {
  @override
  final Iterable<Type> types = const [
    MediatorRatingsRecord,
    _$MediatorRatingsRecord
  ];
  @override
  final String wireName = 'MediatorRatingsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MediatorRatingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.caller;
    if (value != null) {
      result
        ..add('caller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MediatorRatingsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediatorRatingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'caller':
          result.caller = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MediatorRatingsRecord extends MediatorRatingsRecord {
  @override
  final DocumentReference<Object> caller;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final int rating;
  @override
  final DocumentReference<Object> reference;

  factory _$MediatorRatingsRecord(
          [void Function(MediatorRatingsRecordBuilder) updates]) =>
      (new MediatorRatingsRecordBuilder()..update(updates)).build();

  _$MediatorRatingsRecord._(
      {this.caller, this.startTime, this.endTime, this.rating, this.reference})
      : super._();

  @override
  MediatorRatingsRecord rebuild(
          void Function(MediatorRatingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediatorRatingsRecordBuilder toBuilder() =>
      new MediatorRatingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediatorRatingsRecord &&
        caller == other.caller &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        rating == other.rating &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, caller.hashCode), startTime.hashCode),
                endTime.hashCode),
            rating.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MediatorRatingsRecord')
          ..add('caller', caller)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('rating', rating)
          ..add('reference', reference))
        .toString();
  }
}

class MediatorRatingsRecordBuilder
    implements Builder<MediatorRatingsRecord, MediatorRatingsRecordBuilder> {
  _$MediatorRatingsRecord _$v;

  DocumentReference<Object> _caller;
  DocumentReference<Object> get caller => _$this._caller;
  set caller(DocumentReference<Object> caller) => _$this._caller = caller;

  DateTime _startTime;
  DateTime get startTime => _$this._startTime;
  set startTime(DateTime startTime) => _$this._startTime = startTime;

  DateTime _endTime;
  DateTime get endTime => _$this._endTime;
  set endTime(DateTime endTime) => _$this._endTime = endTime;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MediatorRatingsRecordBuilder() {
    MediatorRatingsRecord._initializeBuilder(this);
  }

  MediatorRatingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _caller = $v.caller;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _rating = $v.rating;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediatorRatingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediatorRatingsRecord;
  }

  @override
  void update(void Function(MediatorRatingsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MediatorRatingsRecord build() {
    final _$result = _$v ??
        new _$MediatorRatingsRecord._(
            caller: caller,
            startTime: startTime,
            endTime: endTime,
            rating: rating,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
