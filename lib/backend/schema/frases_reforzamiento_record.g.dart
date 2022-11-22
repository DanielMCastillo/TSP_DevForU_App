// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frases_reforzamiento_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FrasesReforzamientoRecord> _$frasesReforzamientoRecordSerializer =
    new _$FrasesReforzamientoRecordSerializer();

class _$FrasesReforzamientoRecordSerializer
    implements StructuredSerializer<FrasesReforzamientoRecord> {
  @override
  final Iterable<Type> types = const [
    FrasesReforzamientoRecord,
    _$FrasesReforzamientoRecord
  ];
  @override
  final String wireName = 'FrasesReforzamientoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FrasesReforzamientoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idFrase;
    if (value != null) {
      result
        ..add('id_frase')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.frase;
    if (value != null) {
      result
        ..add('frase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FrasesReforzamientoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FrasesReforzamientoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_frase':
          result.idFrase = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'frase':
          result.frase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FrasesReforzamientoRecord extends FrasesReforzamientoRecord {
  @override
  final int? idFrase;
  @override
  final String? frase;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FrasesReforzamientoRecord(
          [void Function(FrasesReforzamientoRecordBuilder)? updates]) =>
      (new FrasesReforzamientoRecordBuilder()..update(updates))._build();

  _$FrasesReforzamientoRecord._({this.idFrase, this.frase, this.ffRef})
      : super._();

  @override
  FrasesReforzamientoRecord rebuild(
          void Function(FrasesReforzamientoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FrasesReforzamientoRecordBuilder toBuilder() =>
      new FrasesReforzamientoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FrasesReforzamientoRecord &&
        idFrase == other.idFrase &&
        frase == other.frase &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, idFrase.hashCode), frase.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FrasesReforzamientoRecord')
          ..add('idFrase', idFrase)
          ..add('frase', frase)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FrasesReforzamientoRecordBuilder
    implements
        Builder<FrasesReforzamientoRecord, FrasesReforzamientoRecordBuilder> {
  _$FrasesReforzamientoRecord? _$v;

  int? _idFrase;
  int? get idFrase => _$this._idFrase;
  set idFrase(int? idFrase) => _$this._idFrase = idFrase;

  String? _frase;
  String? get frase => _$this._frase;
  set frase(String? frase) => _$this._frase = frase;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FrasesReforzamientoRecordBuilder() {
    FrasesReforzamientoRecord._initializeBuilder(this);
  }

  FrasesReforzamientoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idFrase = $v.idFrase;
      _frase = $v.frase;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FrasesReforzamientoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FrasesReforzamientoRecord;
  }

  @override
  void update(void Function(FrasesReforzamientoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FrasesReforzamientoRecord build() => _build();

  _$FrasesReforzamientoRecord _build() {
    final _$result = _$v ??
        new _$FrasesReforzamientoRecord._(
            idFrase: idFrase, frase: frase, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
