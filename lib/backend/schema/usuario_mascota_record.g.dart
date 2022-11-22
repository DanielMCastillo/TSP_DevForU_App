// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_mascota_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioMascotaRecord> _$usuarioMascotaRecordSerializer =
    new _$UsuarioMascotaRecordSerializer();

class _$UsuarioMascotaRecordSerializer
    implements StructuredSerializer<UsuarioMascotaRecord> {
  @override
  final Iterable<Type> types = const [
    UsuarioMascotaRecord,
    _$UsuarioMascotaRecord
  ];
  @override
  final String wireName = 'UsuarioMascotaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsuarioMascotaRecord object,
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
    value = object.nombreMascota;
    if (value != null) {
      result
        ..add('nombreMascota')
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
  UsuarioMascotaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioMascotaRecordBuilder();

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
        case 'nombreMascota':
          result.nombreMascota = serializers.deserialize(value,
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

class _$UsuarioMascotaRecord extends UsuarioMascotaRecord {
  @override
  final DocumentReference<Object?>? uidRef;
  @override
  final String? nombreMascota;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioMascotaRecord(
          [void Function(UsuarioMascotaRecordBuilder)? updates]) =>
      (new UsuarioMascotaRecordBuilder()..update(updates))._build();

  _$UsuarioMascotaRecord._({this.uidRef, this.nombreMascota, this.ffRef})
      : super._();

  @override
  UsuarioMascotaRecord rebuild(
          void Function(UsuarioMascotaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioMascotaRecordBuilder toBuilder() =>
      new UsuarioMascotaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioMascotaRecord &&
        uidRef == other.uidRef &&
        nombreMascota == other.nombreMascota &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, uidRef.hashCode), nombreMascota.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioMascotaRecord')
          ..add('uidRef', uidRef)
          ..add('nombreMascota', nombreMascota)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioMascotaRecordBuilder
    implements Builder<UsuarioMascotaRecord, UsuarioMascotaRecordBuilder> {
  _$UsuarioMascotaRecord? _$v;

  DocumentReference<Object?>? _uidRef;
  DocumentReference<Object?>? get uidRef => _$this._uidRef;
  set uidRef(DocumentReference<Object?>? uidRef) => _$this._uidRef = uidRef;

  String? _nombreMascota;
  String? get nombreMascota => _$this._nombreMascota;
  set nombreMascota(String? nombreMascota) =>
      _$this._nombreMascota = nombreMascota;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioMascotaRecordBuilder() {
    UsuarioMascotaRecord._initializeBuilder(this);
  }

  UsuarioMascotaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uidRef = $v.uidRef;
      _nombreMascota = $v.nombreMascota;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioMascotaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioMascotaRecord;
  }

  @override
  void update(void Function(UsuarioMascotaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioMascotaRecord build() => _build();

  _$UsuarioMascotaRecord _build() {
    final _$result = _$v ??
        new _$UsuarioMascotaRecord._(
            uidRef: uidRef, nombreMascota: nombreMascota, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
