// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotasRecord> _$notasRecordSerializer = new _$NotasRecordSerializer();

class _$NotasRecordSerializer implements StructuredSerializer<NotasRecord> {
  @override
  final Iterable<Type> types = const [NotasRecord, _$NotasRecord];
  @override
  final String wireName = 'NotasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idNota;
    if (value != null) {
      result
        ..add('id_nota')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.idEstadoanimo;
    if (value != null) {
      result
        ..add('id_estadoanimo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nota;
    if (value != null) {
      result
        ..add('nota')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fechaRedac;
    if (value != null) {
      result
        ..add('fecha_redac')
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
  NotasRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_nota':
          result.idNota = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id_estadoanimo':
          result.idEstadoanimo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nota':
          result.nota = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'fecha_redac':
          result.fechaRedac = serializers.deserialize(value,
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

class _$NotasRecord extends NotasRecord {
  @override
  final int? idNota;
  @override
  final int? idEstadoanimo;
  @override
  final DateTime? nota;
  @override
  final DateTime? fechaRedac;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotasRecord([void Function(NotasRecordBuilder)? updates]) =>
      (new NotasRecordBuilder()..update(updates))._build();

  _$NotasRecord._(
      {this.idNota, this.idEstadoanimo, this.nota, this.fechaRedac, this.ffRef})
      : super._();

  @override
  NotasRecord rebuild(void Function(NotasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotasRecordBuilder toBuilder() => new NotasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotasRecord &&
        idNota == other.idNota &&
        idEstadoanimo == other.idEstadoanimo &&
        nota == other.nota &&
        fechaRedac == other.fechaRedac &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idNota.hashCode), idEstadoanimo.hashCode),
                nota.hashCode),
            fechaRedac.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotasRecord')
          ..add('idNota', idNota)
          ..add('idEstadoanimo', idEstadoanimo)
          ..add('nota', nota)
          ..add('fechaRedac', fechaRedac)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotasRecordBuilder implements Builder<NotasRecord, NotasRecordBuilder> {
  _$NotasRecord? _$v;

  int? _idNota;
  int? get idNota => _$this._idNota;
  set idNota(int? idNota) => _$this._idNota = idNota;

  int? _idEstadoanimo;
  int? get idEstadoanimo => _$this._idEstadoanimo;
  set idEstadoanimo(int? idEstadoanimo) =>
      _$this._idEstadoanimo = idEstadoanimo;

  DateTime? _nota;
  DateTime? get nota => _$this._nota;
  set nota(DateTime? nota) => _$this._nota = nota;

  DateTime? _fechaRedac;
  DateTime? get fechaRedac => _$this._fechaRedac;
  set fechaRedac(DateTime? fechaRedac) => _$this._fechaRedac = fechaRedac;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotasRecordBuilder() {
    NotasRecord._initializeBuilder(this);
  }

  NotasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idNota = $v.idNota;
      _idEstadoanimo = $v.idEstadoanimo;
      _nota = $v.nota;
      _fechaRedac = $v.fechaRedac;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotasRecord;
  }

  @override
  void update(void Function(NotasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotasRecord build() => _build();

  _$NotasRecord _build() {
    final _$result = _$v ??
        new _$NotasRecord._(
            idNota: idNota,
            idEstadoanimo: idEstadoanimo,
            nota: nota,
            fechaRedac: fechaRedac,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
