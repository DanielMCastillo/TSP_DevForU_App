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
    value = object.idHorario;
    if (value != null) {
      result
        ..add('id_horario')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
        case 'id_horario':
          result.idHorario = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$HorariosRecord extends HorariosRecord {
  @override
  final int? idHorario;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HorariosRecord([void Function(HorariosRecordBuilder)? updates]) =>
      (new HorariosRecordBuilder()..update(updates))._build();

  _$HorariosRecord._({this.idHorario, this.uid, this.ffRef}) : super._();

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
        idHorario == other.idHorario &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, idHorario.hashCode), uid.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HorariosRecord')
          ..add('idHorario', idHorario)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HorariosRecordBuilder
    implements Builder<HorariosRecord, HorariosRecordBuilder> {
  _$HorariosRecord? _$v;

  int? _idHorario;
  int? get idHorario => _$this._idHorario;
  set idHorario(int? idHorario) => _$this._idHorario = idHorario;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HorariosRecordBuilder() {
    HorariosRecord._initializeBuilder(this);
  }

  HorariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idHorario = $v.idHorario;
      _uid = $v.uid;
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
        new _$HorariosRecord._(idHorario: idHorario, uid: uid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
