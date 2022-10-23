// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_confianza_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosConfianzaRecord> _$usuariosConfianzaRecordSerializer =
    new _$UsuariosConfianzaRecordSerializer();

class _$UsuariosConfianzaRecordSerializer
    implements StructuredSerializer<UsuariosConfianzaRecord> {
  @override
  final Iterable<Type> types = const [
    UsuariosConfianzaRecord,
    _$UsuariosConfianzaRecord
  ];
  @override
  final String wireName = 'UsuariosConfianzaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsuariosConfianzaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreContacto;
    if (value != null) {
      result
        ..add('nombre_contacto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroContacto;
    if (value != null) {
      result
        ..add('numero_contacto')
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
  UsuariosConfianzaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosConfianzaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre_contacto':
          result.nombreContacto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numero_contacto':
          result.numeroContacto = serializers.deserialize(value,
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

class _$UsuariosConfianzaRecord extends UsuariosConfianzaRecord {
  @override
  final String? nombreContacto;
  @override
  final String? numeroContacto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuariosConfianzaRecord(
          [void Function(UsuariosConfianzaRecordBuilder)? updates]) =>
      (new UsuariosConfianzaRecordBuilder()..update(updates))._build();

  _$UsuariosConfianzaRecord._(
      {this.nombreContacto, this.numeroContacto, this.ffRef})
      : super._();

  @override
  UsuariosConfianzaRecord rebuild(
          void Function(UsuariosConfianzaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosConfianzaRecordBuilder toBuilder() =>
      new UsuariosConfianzaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosConfianzaRecord &&
        nombreContacto == other.nombreContacto &&
        numeroContacto == other.numeroContacto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, nombreContacto.hashCode), numeroContacto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuariosConfianzaRecord')
          ..add('nombreContacto', nombreContacto)
          ..add('numeroContacto', numeroContacto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuariosConfianzaRecordBuilder
    implements
        Builder<UsuariosConfianzaRecord, UsuariosConfianzaRecordBuilder> {
  _$UsuariosConfianzaRecord? _$v;

  String? _nombreContacto;
  String? get nombreContacto => _$this._nombreContacto;
  set nombreContacto(String? nombreContacto) =>
      _$this._nombreContacto = nombreContacto;

  String? _numeroContacto;
  String? get numeroContacto => _$this._numeroContacto;
  set numeroContacto(String? numeroContacto) =>
      _$this._numeroContacto = numeroContacto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuariosConfianzaRecordBuilder() {
    UsuariosConfianzaRecord._initializeBuilder(this);
  }

  UsuariosConfianzaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreContacto = $v.nombreContacto;
      _numeroContacto = $v.numeroContacto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosConfianzaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosConfianzaRecord;
  }

  @override
  void update(void Function(UsuariosConfianzaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuariosConfianzaRecord build() => _build();

  _$UsuariosConfianzaRecord _build() {
    final _$result = _$v ??
        new _$UsuariosConfianzaRecord._(
            nombreContacto: nombreContacto,
            numeroContacto: numeroContacto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
