// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_notas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioNotasRecord> _$usuarioNotasRecordSerializer =
    new _$UsuarioNotasRecordSerializer();

class _$UsuarioNotasRecordSerializer
    implements StructuredSerializer<UsuarioNotasRecord> {
  @override
  final Iterable<Type> types = const [UsuarioNotasRecord, _$UsuarioNotasRecord];
  @override
  final String wireName = 'UsuarioNotasRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsuarioNotasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idNota;
    if (value != null) {
      result
        ..add('id_nota')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UsuarioNotasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioNotasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_nota':
          result.idNota = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UsuarioNotasRecord extends UsuarioNotasRecord {
  @override
  final String? uid;
  @override
  final int? idNota;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioNotasRecord(
          [void Function(UsuarioNotasRecordBuilder)? updates]) =>
      (new UsuarioNotasRecordBuilder()..update(updates))._build();

  _$UsuarioNotasRecord._({this.uid, this.idNota, this.ffRef}) : super._();

  @override
  UsuarioNotasRecord rebuild(
          void Function(UsuarioNotasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioNotasRecordBuilder toBuilder() =>
      new UsuarioNotasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioNotasRecord &&
        uid == other.uid &&
        idNota == other.idNota &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, uid.hashCode), idNota.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioNotasRecord')
          ..add('uid', uid)
          ..add('idNota', idNota)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioNotasRecordBuilder
    implements Builder<UsuarioNotasRecord, UsuarioNotasRecordBuilder> {
  _$UsuarioNotasRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _idNota;
  int? get idNota => _$this._idNota;
  set idNota(int? idNota) => _$this._idNota = idNota;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioNotasRecordBuilder() {
    UsuarioNotasRecord._initializeBuilder(this);
  }

  UsuarioNotasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _idNota = $v.idNota;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioNotasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioNotasRecord;
  }

  @override
  void update(void Function(UsuarioNotasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioNotasRecord build() => _build();

  _$UsuarioNotasRecord _build() {
    final _$result = _$v ??
        new _$UsuarioNotasRecord._(uid: uid, idNota: idNota, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
