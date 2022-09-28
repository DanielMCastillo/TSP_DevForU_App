import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'estado_animo_record.g.dart';

abstract class EstadoAnimoRecord
    implements Built<EstadoAnimoRecord, EstadoAnimoRecordBuilder> {
  static Serializer<EstadoAnimoRecord> get serializer =>
      _$estadoAnimoRecordSerializer;

  @BuiltValueField(wireName: 'id_estadoanimo')
  int? get idEstadoanimo;

  String? get estado;

  @BuiltValueField(wireName: 'imagen_estado')
  String? get imagenEstado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EstadoAnimoRecordBuilder builder) => builder
    ..idEstadoanimo = 0
    ..estado = ''
    ..imagenEstado = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estado_animo');

  static Stream<EstadoAnimoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EstadoAnimoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EstadoAnimoRecord._();
  factory EstadoAnimoRecord([void Function(EstadoAnimoRecordBuilder) updates]) =
      _$EstadoAnimoRecord;

  static EstadoAnimoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEstadoAnimoRecordData({
  int? idEstadoanimo,
  String? estado,
  String? imagenEstado,
}) {
  final firestoreData = serializers.toFirestore(
    EstadoAnimoRecord.serializer,
    EstadoAnimoRecord(
      (e) => e
        ..idEstadoanimo = idEstadoanimo
        ..estado = estado
        ..imagenEstado = imagenEstado,
    ),
  );

  return firestoreData;
}
