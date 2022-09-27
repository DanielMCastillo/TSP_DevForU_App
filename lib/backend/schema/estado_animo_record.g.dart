// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estado_animo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EstadoAnimoRecord> _$estadoAnimoRecordSerializer =
    new _$EstadoAnimoRecordSerializer();

class _$EstadoAnimoRecordSerializer
    implements StructuredSerializer<EstadoAnimoRecord> {
  @override
  final Iterable<Type> types = const [EstadoAnimoRecord, _$EstadoAnimoRecord];
  @override
  final String wireName = 'EstadoAnimoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EstadoAnimoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idEstadoanimo;
    if (value != null) {
      result
        ..add('id_estadoanimo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
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
  EstadoAnimoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstadoAnimoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_estadoanimo':
          result.idEstadoanimo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
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

class _$EstadoAnimoRecord extends EstadoAnimoRecord {
  @override
  final int? idEstadoanimo;
  @override
  final String? estado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EstadoAnimoRecord(
          [void Function(EstadoAnimoRecordBuilder)? updates]) =>
      (new EstadoAnimoRecordBuilder()..update(updates))._build();

  _$EstadoAnimoRecord._({this.idEstadoanimo, this.estado, this.ffRef})
      : super._();

  @override
  EstadoAnimoRecord rebuild(void Function(EstadoAnimoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstadoAnimoRecordBuilder toBuilder() =>
      new EstadoAnimoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstadoAnimoRecord &&
        idEstadoanimo == other.idEstadoanimo &&
        estado == other.estado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, idEstadoanimo.hashCode), estado.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EstadoAnimoRecord')
          ..add('idEstadoanimo', idEstadoanimo)
          ..add('estado', estado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EstadoAnimoRecordBuilder
    implements Builder<EstadoAnimoRecord, EstadoAnimoRecordBuilder> {
  _$EstadoAnimoRecord? _$v;

  int? _idEstadoanimo;
  int? get idEstadoanimo => _$this._idEstadoanimo;
  set idEstadoanimo(int? idEstadoanimo) =>
      _$this._idEstadoanimo = idEstadoanimo;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EstadoAnimoRecordBuilder() {
    EstadoAnimoRecord._initializeBuilder(this);
  }

  EstadoAnimoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idEstadoanimo = $v.idEstadoanimo;
      _estado = $v.estado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstadoAnimoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstadoAnimoRecord;
  }

  @override
  void update(void Function(EstadoAnimoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstadoAnimoRecord build() => _build();

  _$EstadoAnimoRecord _build() {
    final _$result = _$v ??
        new _$EstadoAnimoRecord._(
            idEstadoanimo: idEstadoanimo, estado: estado, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
