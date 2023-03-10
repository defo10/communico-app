// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
    value = object.aggregatedRating;
    if (value != null) {
      result
        ..add('aggregated_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalRatings;
    if (value != null) {
      result
        ..add('total_ratings')
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
    value = object.tokens;
    if (value != null) {
      result
        ..add('tokens')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TokensRecord)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'aggregated_rating':
          result.aggregatedRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total_ratings':
          result.totalRatings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'tokens':
          result.tokens.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TokensRecord)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String uid;
  @override
  final String phoneNumber;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final double aggregatedRating;
  @override
  final int totalRatings;
  @override
  final DocumentReference<Object> reference;
  @override
  final BuiltList<TokensRecord> tokens;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.password,
      this.uid,
      this.phoneNumber,
      this.photoUrl,
      this.createdTime,
      this.aggregatedRating,
      this.totalRatings,
      this.reference,
      this.tokens})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'UsersRecord', 'uid');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        password == other.password &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        aggregatedRating == other.aggregatedRating &&
        totalRatings == other.totalRatings &&
        reference == other.reference &&
        tokens == other.tokens;
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
                                        $jc($jc(0, displayName.hashCode),
                                            email.hashCode),
                                        password.hashCode),
                                    uid.hashCode),
                                phoneNumber.hashCode),
                            photoUrl.hashCode),
                        createdTime.hashCode),
                    aggregatedRating.hashCode),
                totalRatings.hashCode),
            reference.hashCode),
        tokens.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('password', password)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('aggregatedRating', aggregatedRating)
          ..add('totalRatings', totalRatings)
          ..add('reference', reference)
          ..add('tokens', tokens))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  double _aggregatedRating;
  double get aggregatedRating => _$this._aggregatedRating;
  set aggregatedRating(double aggregatedRating) =>
      _$this._aggregatedRating = aggregatedRating;

  int _totalRatings;
  int get totalRatings => _$this._totalRatings;
  set totalRatings(int totalRatings) => _$this._totalRatings = totalRatings;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ListBuilder<TokensRecord> _tokens;
  ListBuilder<TokensRecord> get tokens =>
      _$this._tokens ??= new ListBuilder<TokensRecord>();
  set tokens(ListBuilder<TokensRecord> tokens) => _$this._tokens = tokens;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _password = $v.password;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _aggregatedRating = $v.aggregatedRating;
      _totalRatings = $v.totalRatings;
      _reference = $v.reference;
      _tokens = $v.tokens?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              displayName: displayName,
              email: email,
              password: password,
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'UsersRecord', 'uid'),
              phoneNumber: phoneNumber,
              photoUrl: photoUrl,
              createdTime: createdTime,
              aggregatedRating: aggregatedRating,
              totalRatings: totalRatings,
              reference: reference,
              tokens: _tokens?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tokens';
        _tokens?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
