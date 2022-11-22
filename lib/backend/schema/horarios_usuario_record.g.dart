// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horarios_usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HorariosUsuarioRecord> _$horariosUsuarioRecordSerializer =
    new _$HorariosUsuarioRecordSerializer();

class _$HorariosUsuarioRecordSerializer
    implements StructuredSerializer<HorariosUsuarioRecord> {
  @override
  final Iterable<Type> types = const [
    HorariosUsuarioRecord,
    _$HorariosUsuarioRecord
  ];
  @override
  final String wireName = 'HorariosUsuarioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HorariosUsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uidref;
    if (value != null) {
      result
        ..add('uidref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.desayuno;
    if (value != null) {
      result
        ..add('desayuno')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.comida;
    if (value != null) {
      result
        ..add('comida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cena;
    if (value != null) {
      result
        ..add('cena')
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
  HorariosUsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HorariosUsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uidref':
          result.uidref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'desayuno':
          result.desayuno = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'comida':
          result.comida = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cena':
          result.cena = serializers.deserialize(value,
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

class _$HorariosUsuarioRecord extends HorariosUsuarioRecord {
  @override
  final DocumentReference<Object?>? uidref;
  @override
  final DateTime? desayuno;
  @override
  final DateTime? comida;
  @override
  final DateTime? cena;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HorariosUsuarioRecord(
          [void Function(HorariosUsuarioRecordBuilder)? updates]) =>
      (new HorariosUsuarioRecordBuilder()..update(updates))._build();

  _$HorariosUsuarioRecord._(
      {this.uidref, this.desayuno, this.comida, this.cena, this.ffRef})
      : super._();

  @override
  HorariosUsuarioRecord rebuild(
          void Function(HorariosUsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HorariosUsuarioRecordBuilder toBuilder() =>
      new HorariosUsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HorariosUsuarioRecord &&
        uidref == other.uidref &&
        desayuno == other.desayuno &&
        comida == other.comida &&
        cena == other.cena &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uidref.hashCode), desayuno.hashCode),
                comida.hashCode),
            cena.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HorariosUsuarioRecord')
          ..add('uidref', uidref)
          ..add('desayuno', desayuno)
          ..add('comida', comida)
          ..add('cena', cena)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HorariosUsuarioRecordBuilder
    implements Builder<HorariosUsuarioRecord, HorariosUsuarioRecordBuilder> {
  _$HorariosUsuarioRecord? _$v;

  DocumentReference<Object?>? _uidref;
  DocumentReference<Object?>? get uidref => _$this._uidref;
  set uidref(DocumentReference<Object?>? uidref) => _$this._uidref = uidref;

  DateTime? _desayuno;
  DateTime? get desayuno => _$this._desayuno;
  set desayuno(DateTime? desayuno) => _$this._desayuno = desayuno;

  DateTime? _comida;
  DateTime? get comida => _$this._comida;
  set comida(DateTime? comida) => _$this._comida = comida;

  DateTime? _cena;
  DateTime? get cena => _$this._cena;
  set cena(DateTime? cena) => _$this._cena = cena;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HorariosUsuarioRecordBuilder() {
    HorariosUsuarioRecord._initializeBuilder(this);
  }

  HorariosUsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uidref = $v.uidref;
      _desayuno = $v.desayuno;
      _comida = $v.comida;
      _cena = $v.cena;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HorariosUsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HorariosUsuarioRecord;
  }

  @override
  void update(void Function(HorariosUsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HorariosUsuarioRecord build() => _build();

  _$HorariosUsuarioRecord _build() {
    final _$result = _$v ??
        new _$HorariosUsuarioRecord._(
            uidref: uidref,
            desayuno: desayuno,
            comida: comida,
            cena: cena,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
