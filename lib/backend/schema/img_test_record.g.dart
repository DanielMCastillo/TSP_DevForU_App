// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'img_test_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImgTestRecord> _$imgTestRecordSerializer =
    new _$ImgTestRecordSerializer();

class _$ImgTestRecordSerializer implements StructuredSerializer<ImgTestRecord> {
  @override
  final Iterable<Type> types = const [ImgTestRecord, _$ImgTestRecord];
  @override
  final String wireName = 'ImgTestRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImgTestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.haha;
    if (value != null) {
      result
        ..add('haha')
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
  ImgTestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImgTestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'haha':
          result.haha = serializers.deserialize(value,
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

class _$ImgTestRecord extends ImgTestRecord {
  @override
  final String? haha;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImgTestRecord([void Function(ImgTestRecordBuilder)? updates]) =>
      (new ImgTestRecordBuilder()..update(updates))._build();

  _$ImgTestRecord._({this.haha, this.ffRef}) : super._();

  @override
  ImgTestRecord rebuild(void Function(ImgTestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImgTestRecordBuilder toBuilder() => new ImgTestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImgTestRecord && haha == other.haha && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, haha.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImgTestRecord')
          ..add('haha', haha)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImgTestRecordBuilder
    implements Builder<ImgTestRecord, ImgTestRecordBuilder> {
  _$ImgTestRecord? _$v;

  String? _haha;
  String? get haha => _$this._haha;
  set haha(String? haha) => _$this._haha = haha;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImgTestRecordBuilder() {
    ImgTestRecord._initializeBuilder(this);
  }

  ImgTestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _haha = $v.haha;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImgTestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImgTestRecord;
  }

  @override
  void update(void Function(ImgTestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImgTestRecord build() => _build();

  _$ImgTestRecord _build() {
    final _$result = _$v ?? new _$ImgTestRecord._(haha: haha, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
