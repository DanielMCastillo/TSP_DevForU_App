// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comidas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComidasRecord> _$comidasRecordSerializer =
    new _$ComidasRecordSerializer();

class _$ComidasRecordSerializer implements StructuredSerializer<ComidasRecord> {
  @override
  final Iterable<Type> types = const [ComidasRecord, _$ComidasRecord];
  @override
  final String wireName = 'ComidasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComidasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tipoComida;
    if (value != null) {
      result
        ..add('tipoComida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcionComida;
    if (value != null) {
      result
        ..add('descripcionComida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motivoComida;
    if (value != null) {
      result
        ..add('motivoComida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaRegistro;
    if (value != null) {
      result
        ..add('fechaRegistro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ComidasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComidasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tipoComida':
          result.tipoComida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcionComida':
          result.descripcionComida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'motivoComida':
          result.motivoComida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fechaRegistro':
          result.fechaRegistro = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ComidasRecord extends ComidasRecord {
  @override
  final String? tipoComida;
  @override
  final String? descripcionComida;
  @override
  final String? motivoComida;
  @override
  final DateTime? fechaRegistro;
  @override
  final DocumentReference<Object?>? uidRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComidasRecord([void Function(ComidasRecordBuilder)? updates]) =>
      (new ComidasRecordBuilder()..update(updates))._build();

  _$ComidasRecord._(
      {this.tipoComida,
      this.descripcionComida,
      this.motivoComida,
      this.fechaRegistro,
      this.uidRef,
      this.ffRef})
      : super._();

  @override
  ComidasRecord rebuild(void Function(ComidasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComidasRecordBuilder toBuilder() => new ComidasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComidasRecord &&
        tipoComida == other.tipoComida &&
        descripcionComida == other.descripcionComida &&
        motivoComida == other.motivoComida &&
        fechaRegistro == other.fechaRegistro &&
        uidRef == other.uidRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, tipoComida.hashCode),
                        descripcionComida.hashCode),
                    motivoComida.hashCode),
                fechaRegistro.hashCode),
            uidRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComidasRecord')
          ..add('tipoComida', tipoComida)
          ..add('descripcionComida', descripcionComida)
          ..add('motivoComida', motivoComida)
          ..add('fechaRegistro', fechaRegistro)
          ..add('uidRef', uidRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComidasRecordBuilder
    implements Builder<ComidasRecord, ComidasRecordBuilder> {
  _$ComidasRecord? _$v;

  String? _tipoComida;
  String? get tipoComida => _$this._tipoComida;
  set tipoComida(String? tipoComida) => _$this._tipoComida = tipoComida;

  String? _descripcionComida;
  String? get descripcionComida => _$this._descripcionComida;
  set descripcionComida(String? descripcionComida) =>
      _$this._descripcionComida = descripcionComida;

  String? _motivoComida;
  String? get motivoComida => _$this._motivoComida;
  set motivoComida(String? motivoComida) => _$this._motivoComida = motivoComida;

  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _$this._fechaRegistro;
  set fechaRegistro(DateTime? fechaRegistro) =>
      _$this._fechaRegistro = fechaRegistro;

  DocumentReference<Object?>? _uidRef;
  DocumentReference<Object?>? get uidRef => _$this._uidRef;
  set uidRef(DocumentReference<Object?>? uidRef) => _$this._uidRef = uidRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComidasRecordBuilder() {
    ComidasRecord._initializeBuilder(this);
  }

  ComidasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tipoComida = $v.tipoComida;
      _descripcionComida = $v.descripcionComida;
      _motivoComida = $v.motivoComida;
      _fechaRegistro = $v.fechaRegistro;
      _uidRef = $v.uidRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComidasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComidasRecord;
  }

  @override
  void update(void Function(ComidasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComidasRecord build() => _build();

  _$ComidasRecord _build() {
    final _$result = _$v ??
        new _$ComidasRecord._(
            tipoComida: tipoComida,
            descripcionComida: descripcionComida,
            motivoComida: motivoComida,
            fechaRegistro: fechaRegistro,
            uidRef: uidRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
