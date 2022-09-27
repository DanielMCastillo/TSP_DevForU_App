// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HorariosRecord> _$horariosRecordSerializer =
    new _$HorariosRecordSerializer();

class _$HorariosRecordSerializer
    implements StructuredSerializer<HorariosRecord> {
  @override
  final Iterable<Type> types = const [HorariosRecord, _$HorariosRecord];
  @override
  final String wireName = 'HorariosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HorariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.desayuno;
    if (value != null) {
      result
        ..add('desayuno')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comida;
    if (value != null) {
      result
        ..add('comida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cena;
    if (value != null) {
      result
        ..add('cena')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uidRef;
    if (value != null) {
      result
        ..add('uid_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  HorariosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HorariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'desayuno':
          result.desayuno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comida':
          result.comida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cena':
          result.cena = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid_ref':
          result.uidRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$HorariosRecord extends HorariosRecord {
  @override
  final String? desayuno;
  @override
  final String? comida;
  @override
  final String? cena;
  @override
  final DocumentReference<Object?>? uidRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HorariosRecord([void Function(HorariosRecordBuilder)? updates]) =>
      (new HorariosRecordBuilder()..update(updates))._build();

  _$HorariosRecord._(
      {this.desayuno, this.comida, this.cena, this.uidRef, this.ffRef})
      : super._();

  @override
  HorariosRecord rebuild(void Function(HorariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HorariosRecordBuilder toBuilder() =>
      new HorariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HorariosRecord &&
        desayuno == other.desayuno &&
        comida == other.comida &&
        cena == other.cena &&
        uidRef == other.uidRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, desayuno.hashCode), comida.hashCode), cena.hashCode),
            uidRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HorariosRecord')
          ..add('desayuno', desayuno)
          ..add('comida', comida)
          ..add('cena', cena)
          ..add('uidRef', uidRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HorariosRecordBuilder
    implements Builder<HorariosRecord, HorariosRecordBuilder> {
  _$HorariosRecord? _$v;

  String? _desayuno;
  String? get desayuno => _$this._desayuno;
  set desayuno(String? desayuno) => _$this._desayuno = desayuno;

  String? _comida;
  String? get comida => _$this._comida;
  set comida(String? comida) => _$this._comida = comida;

  String? _cena;
  String? get cena => _$this._cena;
  set cena(String? cena) => _$this._cena = cena;

  DocumentReference<Object?>? _uidRef;
  DocumentReference<Object?>? get uidRef => _$this._uidRef;
  set uidRef(DocumentReference<Object?>? uidRef) => _$this._uidRef = uidRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HorariosRecordBuilder() {
    HorariosRecord._initializeBuilder(this);
  }

  HorariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _desayuno = $v.desayuno;
      _comida = $v.comida;
      _cena = $v.cena;
      _uidRef = $v.uidRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HorariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HorariosRecord;
  }

  @override
  void update(void Function(HorariosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HorariosRecord build() => _build();

  _$HorariosRecord _build() {
    final _$result = _$v ??
        new _$HorariosRecord._(
            desayuno: desayuno,
            comida: comida,
            cena: cena,
            uidRef: uidRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
