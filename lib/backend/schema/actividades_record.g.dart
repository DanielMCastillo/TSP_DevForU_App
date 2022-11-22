// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actividades_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActividadesRecord> _$actividadesRecordSerializer =
    new _$ActividadesRecordSerializer();

class _$ActividadesRecordSerializer
    implements StructuredSerializer<ActividadesRecord> {
  @override
  final Iterable<Type> types = const [ActividadesRecord, _$ActividadesRecord];
  @override
  final String wireName = 'ActividadesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActividadesRecord object,
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
    value = object.nombreActividad;
    if (value != null) {
      result
        ..add('nombreActividad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campoActividad;
    if (value != null) {
      result
        ..add('campoActividad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaActividad;
    if (value != null) {
      result
        ..add('fechaActividad')
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
  ActividadesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActividadesRecordBuilder();

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
        case 'nombreActividad':
          result.nombreActividad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campoActividad':
          result.campoActividad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fechaActividad':
          result.fechaActividad = serializers.deserialize(value,
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

class _$ActividadesRecord extends ActividadesRecord {
  @override
  final DocumentReference<Object?>? uidRef;
  @override
  final String? nombreActividad;
  @override
  final String? campoActividad;
  @override
  final DateTime? fechaActividad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActividadesRecord(
          [void Function(ActividadesRecordBuilder)? updates]) =>
      (new ActividadesRecordBuilder()..update(updates))._build();

  _$ActividadesRecord._(
      {this.uidRef,
      this.nombreActividad,
      this.campoActividad,
      this.fechaActividad,
      this.ffRef})
      : super._();

  @override
  ActividadesRecord rebuild(void Function(ActividadesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActividadesRecordBuilder toBuilder() =>
      new ActividadesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActividadesRecord &&
        uidRef == other.uidRef &&
        nombreActividad == other.nombreActividad &&
        campoActividad == other.campoActividad &&
        fechaActividad == other.fechaActividad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uidRef.hashCode), nombreActividad.hashCode),
                campoActividad.hashCode),
            fechaActividad.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActividadesRecord')
          ..add('uidRef', uidRef)
          ..add('nombreActividad', nombreActividad)
          ..add('campoActividad', campoActividad)
          ..add('fechaActividad', fechaActividad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActividadesRecordBuilder
    implements Builder<ActividadesRecord, ActividadesRecordBuilder> {
  _$ActividadesRecord? _$v;

  DocumentReference<Object?>? _uidRef;
  DocumentReference<Object?>? get uidRef => _$this._uidRef;
  set uidRef(DocumentReference<Object?>? uidRef) => _$this._uidRef = uidRef;

  String? _nombreActividad;
  String? get nombreActividad => _$this._nombreActividad;
  set nombreActividad(String? nombreActividad) =>
      _$this._nombreActividad = nombreActividad;

  String? _campoActividad;
  String? get campoActividad => _$this._campoActividad;
  set campoActividad(String? campoActividad) =>
      _$this._campoActividad = campoActividad;

  DateTime? _fechaActividad;
  DateTime? get fechaActividad => _$this._fechaActividad;
  set fechaActividad(DateTime? fechaActividad) =>
      _$this._fechaActividad = fechaActividad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActividadesRecordBuilder() {
    ActividadesRecord._initializeBuilder(this);
  }

  ActividadesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uidRef = $v.uidRef;
      _nombreActividad = $v.nombreActividad;
      _campoActividad = $v.campoActividad;
      _fechaActividad = $v.fechaActividad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActividadesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActividadesRecord;
  }

  @override
  void update(void Function(ActividadesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActividadesRecord build() => _build();

  _$ActividadesRecord _build() {
    final _$result = _$v ??
        new _$ActividadesRecord._(
            uidRef: uidRef,
            nombreActividad: nombreActividad,
            campoActividad: campoActividad,
            fechaActividad: fechaActividad,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
