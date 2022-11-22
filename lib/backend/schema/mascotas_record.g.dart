// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mascotas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MascotasRecord> _$mascotasRecordSerializer =
    new _$MascotasRecordSerializer();

class _$MascotasRecordSerializer
    implements StructuredSerializer<MascotasRecord> {
  @override
  final Iterable<Type> types = const [MascotasRecord, _$MascotasRecord];
  @override
  final String wireName = 'MascotasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MascotasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idMascota;
    if (value != null) {
      result
        ..add('id_mascota')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombreMascota;
    if (value != null) {
      result
        ..add('nombre_mascota')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animalMascota;
    if (value != null) {
      result
        ..add('animal_mascota')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenMascota;
    if (value != null) {
      result
        ..add('imagen_mascota')
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
  MascotasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MascotasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_mascota':
          result.idMascota = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombre_mascota':
          result.nombreMascota = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animal_mascota':
          result.animalMascota = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen_mascota':
          result.imagenMascota = serializers.deserialize(value,
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

class _$MascotasRecord extends MascotasRecord {
  @override
  final int? idMascota;
  @override
  final String? nombreMascota;
  @override
  final String? animalMascota;
  @override
  final String? imagenMascota;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MascotasRecord([void Function(MascotasRecordBuilder)? updates]) =>
      (new MascotasRecordBuilder()..update(updates))._build();

  _$MascotasRecord._(
      {this.idMascota,
      this.nombreMascota,
      this.animalMascota,
      this.imagenMascota,
      this.ffRef})
      : super._();

  @override
  MascotasRecord rebuild(void Function(MascotasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MascotasRecordBuilder toBuilder() =>
      new MascotasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MascotasRecord &&
        idMascota == other.idMascota &&
        nombreMascota == other.nombreMascota &&
        animalMascota == other.animalMascota &&
        imagenMascota == other.imagenMascota &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idMascota.hashCode), nombreMascota.hashCode),
                animalMascota.hashCode),
            imagenMascota.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MascotasRecord')
          ..add('idMascota', idMascota)
          ..add('nombreMascota', nombreMascota)
          ..add('animalMascota', animalMascota)
          ..add('imagenMascota', imagenMascota)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MascotasRecordBuilder
    implements Builder<MascotasRecord, MascotasRecordBuilder> {
  _$MascotasRecord? _$v;

  int? _idMascota;
  int? get idMascota => _$this._idMascota;
  set idMascota(int? idMascota) => _$this._idMascota = idMascota;

  String? _nombreMascota;
  String? get nombreMascota => _$this._nombreMascota;
  set nombreMascota(String? nombreMascota) =>
      _$this._nombreMascota = nombreMascota;

  String? _animalMascota;
  String? get animalMascota => _$this._animalMascota;
  set animalMascota(String? animalMascota) =>
      _$this._animalMascota = animalMascota;

  String? _imagenMascota;
  String? get imagenMascota => _$this._imagenMascota;
  set imagenMascota(String? imagenMascota) =>
      _$this._imagenMascota = imagenMascota;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MascotasRecordBuilder() {
    MascotasRecord._initializeBuilder(this);
  }

  MascotasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idMascota = $v.idMascota;
      _nombreMascota = $v.nombreMascota;
      _animalMascota = $v.animalMascota;
      _imagenMascota = $v.imagenMascota;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MascotasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MascotasRecord;
  }

  @override
  void update(void Function(MascotasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MascotasRecord build() => _build();

  _$MascotasRecord _build() {
    final _$result = _$v ??
        new _$MascotasRecord._(
            idMascota: idMascota,
            nombreMascota: nombreMascota,
            animalMascota: animalMascota,
            imagenMascota: imagenMascota,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
