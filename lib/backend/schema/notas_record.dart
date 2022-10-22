import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notas_record.g.dart';

abstract class NotasRecord implements Built<NotasRecord, NotasRecordBuilder> {
  static Serializer<NotasRecord> get serializer => _$notasRecordSerializer;

  @BuiltValueField(wireName: 'id_nota')
  int? get idNota;

  @BuiltValueField(wireName: 'fecha_redac')
  DateTime? get fechaRedac;

  String? get nota;

  @BuiltValueField(wireName: 'uid_ref')
  DocumentReference? get uidRef;

  @BuiltValueField(wireName: 'id_estado_animo')
  int? get idEstadoAnimo;

  String? get sentimiento;

  @BuiltValueField(wireName: 'id_estadoanimo')
  String? get idEstadoanimo;

  @BuiltValueField(wireName: 'foto_nota')
  String? get fotoNota;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotasRecordBuilder builder) => builder
    ..idNota = 0
    ..nota = ''
    ..idEstadoAnimo = 0
    ..sentimiento = ''
    ..idEstadoanimo = ''
    ..fotoNota = '';

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
  DateTime? fechaRedac,
  String? nota,
  DocumentReference? uidRef,
  int? idEstadoAnimo,
  String? sentimiento,
  String? idEstadoanimo,
  String? fotoNota,
}) {
  final firestoreData = serializers.toFirestore(
    NotasRecord.serializer,
    NotasRecord(
      (n) => n
        ..idNota = idNota
        ..fechaRedac = fechaRedac
        ..nota = nota
        ..uidRef = uidRef
        ..idEstadoAnimo = idEstadoAnimo
        ..sentimiento = sentimiento
        ..idEstadoanimo = idEstadoanimo
        ..fotoNota = fotoNota,
    ),
  );

  return firestoreData;
}
