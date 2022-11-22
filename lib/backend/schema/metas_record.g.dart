// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetasRecord> _$metasRecordSerializer = new _$MetasRecordSerializer();

class _$MetasRecordSerializer implements StructuredSerializer<MetasRecord> {
  @override
  final Iterable<Type> types = const [MetasRecord, _$MetasRecord];
  @override
  final String wireName = 'MetasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MetasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uidRef;
    if (value != null) {
      result
        ..add('uid_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.descMeta1;
    if (value != null) {
      result
        ..add('descMeta1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaMeta1;
    if (value != null) {
      result
        ..add('fechaMeta1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.descMeta2;
    if (value != null) {
      result
        ..add('descMeta2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaMeta2;
    if (value != null) {
      result
        ..add('fechaMeta2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MetasRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid_ref':
          result.uidRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'descMeta1':
          result.descMeta1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fechaMeta1':
          result.fechaMeta1 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'descMeta2':
          result.descMeta2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fechaMeta2':
          result.fechaMeta2 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MetasRecord extends MetasRecord {
  @override
  final DocumentReference<Object?>? uidRef;
  @override
  final String? descMeta1;
  @override
  final DateTime? fechaMeta1;
  @override
  final String? descMeta2;
  @override
  final DateTime? fechaMeta2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MetasRecord([void Function(MetasRecordBuilder)? updates]) =>
      (new MetasRecordBuilder()..update(updates))._build();

  _$MetasRecord._(
      {this.uidRef,
      this.descMeta1,
      this.fechaMeta1,
      this.descMeta2,
      this.fechaMeta2,
      this.ffRef})
      : super._();

  @override
  MetasRecord rebuild(void Function(MetasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetasRecordBuilder toBuilder() => new MetasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetasRecord &&
        uidRef == other.uidRef &&
        descMeta1 == other.descMeta1 &&
        fechaMeta1 == other.fechaMeta1 &&
        descMeta2 == other.descMeta2 &&
        fechaMeta2 == other.fechaMeta2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uidRef.hashCode), descMeta1.hashCode),
                    fechaMeta1.hashCode),
                descMeta2.hashCode),
            fechaMeta2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetasRecord')
          ..add('uidRef', uidRef)
          ..add('descMeta1', descMeta1)
          ..add('fechaMeta1', fechaMeta1)
          ..add('descMeta2', descMeta2)
          ..add('fechaMeta2', fechaMeta2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MetasRecordBuilder implements Builder<MetasRecord, MetasRecordBuilder> {
  _$MetasRecord? _$v;

  DocumentReference<Object?>? _uidRef;
  DocumentReference<Object?>? get uidRef => _$this._uidRef;
  set uidRef(DocumentReference<Object?>? uidRef) => _$this._uidRef = uidRef;

  String? _descMeta1;
  String? get descMeta1 => _$this._descMeta1;
  set descMeta1(String? descMeta1) => _$this._descMeta1 = descMeta1;

  DateTime? _fechaMeta1;
  DateTime? get fechaMeta1 => _$this._fechaMeta1;
  set fechaMeta1(DateTime? fechaMeta1) => _$this._fechaMeta1 = fechaMeta1;

  String? _descMeta2;
  String? get descMeta2 => _$this._descMeta2;
  set descMeta2(String? descMeta2) => _$this._descMeta2 = descMeta2;

  DateTime? _fechaMeta2;
  DateTime? get fechaMeta2 => _$this._fechaMeta2;
  set fechaMeta2(DateTime? fechaMeta2) => _$this._fechaMeta2 = fechaMeta2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MetasRecordBuilder() {
    MetasRecord._initializeBuilder(this);
  }

  MetasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uidRef = $v.uidRef;
      _descMeta1 = $v.descMeta1;
      _fechaMeta1 = $v.fechaMeta1;
      _descMeta2 = $v.descMeta2;
      _fechaMeta2 = $v.fechaMeta2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetasRecord;
  }

  @override
  void update(void Function(MetasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetasRecord build() => _build();

  _$MetasRecord _build() {
    final _$result = _$v ??
        new _$MetasRecord._(
            uidRef: uidRef,
            descMeta1: descMeta1,
            fechaMeta1: fechaMeta1,
            descMeta2: descMeta2,
            fechaMeta2: fechaMeta2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
