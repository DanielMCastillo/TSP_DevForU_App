import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notas_record.g.dart';

abstract class NotasRecord implements Built<NotasRecord, NotasRecordBuilder> {
  static Serializer<NotasRecord> get serializer => _$notasRecordSerializer;

  @BuiltValueField(wireName: 'id_nota')
  int? get idNota;

  @BuiltValueField(wireName: 'id_estadoanimo')
  int? get idEstadoanimo;

  DateTime? get nota;

  @BuiltValueField(wireName: 'fecha_redac')
  DateTime? get fechaRedac;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotasRecordBuilder builder) => builder
    ..idNota = 0
    ..idEstadoanimo = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notas');

  static Stream<NotasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotasRecord._();
  factory NotasRecord([void Function(NotasRecordBuilder) updates]) =
      _$NotasRecord;

  static NotasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotasRecordData({
  int? idNota,
  int? idEstadoanimo,
  DateTime? nota,
  DateTime? fechaRedac,
}) {
  final firestoreData = serializers.toFirestore(
    NotasRecord.serializer,
    NotasRecord(
      (n) => n
        ..idNota = idNota
        ..idEstadoanimo = idEstadoanimo
        ..nota = nota
        ..fechaRedac = fechaRedac,
    ),
  );

  return firestoreData;
}
