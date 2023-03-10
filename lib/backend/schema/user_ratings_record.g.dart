// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ratings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRatingsRecord> _$userRatingsRecordSerializer =
    new _$UserRatingsRecordSerializer();

class _$UserRatingsRecordSerializer
    implements StructuredSerializer<UserRatingsRecord> {
  @override
  final Iterable<Type> types = const [UserRatingsRecord, _$UserRatingsRecord];
  @override
  final String wireName = 'UserRatingsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserRatingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ratingUser;
    if (value != null) {
      result
        ..add('rating_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.ratedMediator;
    if (value != null) {
      result
        ..add('rated_mediator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.flags;
    if (value != null) {
      result
        ..add('flags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ratingUserDisplayName;
    if (value != null) {
      result
        ..add('rating_user_display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
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
    return result;
  }

  @override
  UserRatingsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRatingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'rating_user':
          result.ratingUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'rated_mediator':
          result.ratedMediator = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'flags':
          result.flags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'rating_user_display_name':
          result.ratingUserDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$UserRatingsRecord extends UserRatingsRecord {
  @override
  final DocumentReference<Object> ratingUser;
  @override
  final DocumentReference<Object> ratedMediator;
  @override
  final double rating;
  @override
  final BuiltList<String> flags;
  @override
  final String ratingUserDisplayName;
  @override
  final String comment;
  @override
  final DocumentReference<Object> reference;

  factory _$UserRatingsRecord(
          [void Function(UserRatingsRecordBuilder) updates]) =>
      (new UserRatingsRecordBuilder()..update(updates)).build();

  _$UserRatingsRecord._(
      {this.ratingUser,
      this.ratedMediator,
      this.rating,
      this.flags,
      this.ratingUserDisplayName,
      this.comment,
      this.reference})
      : super._();

  @override
  UserRatingsRecord rebuild(void Function(UserRatingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRatingsRecordBuilder toBuilder() =>
      new UserRatingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRatingsRecord &&
        ratingUser == other.ratingUser &&
        ratedMediator == other.ratedMediator &&
        rating == other.rating &&
        flags == other.flags &&
        ratingUserDisplayName == other.ratingUserDisplayName &&
        comment == other.comment &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, ratingUser.hashCode),
                            ratedMediator.hashCode),
                        rating.hashCode),
                    flags.hashCode),
                ratingUserDisplayName.hashCode),
            comment.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRatingsRecord')
          ..add('ratingUser', ratingUser)
          ..add('ratedMediator', ratedMediator)
          ..add('rating', rating)
          ..add('flags', flags)
          ..add('ratingUserDisplayName', ratingUserDisplayName)
          ..add('comment', comment)
          ..add('reference', reference))
        .toString();
  }
}

class UserRatingsRecordBuilder
    implements Builder<UserRatingsRecord, UserRatingsRecordBuilder> {
  _$UserRatingsRecord _$v;

  DocumentReference<Object> _ratingUser;
  DocumentReference<Object> get ratingUser => _$this._ratingUser;
  set ratingUser(DocumentReference<Object> ratingUser) =>
      _$this._ratingUser = ratingUser;

  DocumentReference<Object> _ratedMediator;
  DocumentReference<Object> get ratedMediator => _$this._ratedMediator;
  set ratedMediator(DocumentReference<Object> ratedMediator) =>
      _$this._ratedMediator = ratedMediator;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  ListBuilder<String> _flags;
  ListBuilder<String> get flags => _$this._flags ??= new ListBuilder<String>();
  set flags(ListBuilder<String> flags) => _$this._flags = flags;

  String _ratingUserDisplayName;
  String get ratingUserDisplayName => _$this._ratingUserDisplayName;
  set ratingUserDisplayName(String ratingUserDisplayName) =>
      _$this._ratingUserDisplayName = ratingUserDisplayName;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserRatingsRecordBuilder() {
    UserRatingsRecord._initializeBuilder(this);
  }

  UserRatingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratingUser = $v.ratingUser;
      _ratedMediator = $v.ratedMediator;
      _rating = $v.rating;
      _flags = $v.flags?.toBuilder();
      _ratingUserDisplayName = $v.ratingUserDisplayName;
      _comment = $v.comment;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRatingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRatingsRecord;
  }

  @override
  void update(void Function(UserRatingsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRatingsRecord build() {
    _$UserRatingsRecord _$result;
    try {
      _$result = _$v ??
          new _$UserRatingsRecord._(
              ratingUser: ratingUser,
              ratedMediator: ratedMediator,
              rating: rating,
              flags: _flags?.build(),
              ratingUserDisplayName: ratingUserDisplayName,
              comment: comment,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'flags';
        _flags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserRatingsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
