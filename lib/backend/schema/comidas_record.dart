import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comidas_record.g.dart';

abstract class ComidasRecord
    implements Built<ComidasRecord, ComidasRecordBuilder> {
  static Serializer<ComidasRecord> get serializer => _$comidasRecordSerializer;

  String? get tipoComida;

  String? get descripcionComida;

  String? get motivoComida;

  DateTime? get fechaRegistro;

  @BuiltValueField(wireName: 'uid_ref')
  DocumentReference? get uidRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComidasRecordBuilder builder) => builder
    ..tipoComida = ''
    ..descripcionComida = ''
    ..motivoComida = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comidas');

  static Stream<ComidasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComidasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComidasRecord._();
  factory ComidasRecord([void Function(ComidasRecordBuilder) updates]) =
      _$ComidasRecord;

  static ComidasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComidasRecordData({
  String? tipoComida,
  String? descripcionComida,
  String? motivoComida,
  DateTime? fechaRegistro,
  DocumentReference? uidRef,
}) {
  final firestoreData = serializers.toFirestore(
    ComidasRecord.serializer,
    ComidasRecord(
      (c) => c
        ..tipoComida = tipoComida
        ..descripcionComida = descripcionComida
        ..motivoComida = motivoComida
        ..fechaRegistro = fechaRegistro
        ..uidRef = uidRef,
    ),
  );

  return firestoreData;
}
