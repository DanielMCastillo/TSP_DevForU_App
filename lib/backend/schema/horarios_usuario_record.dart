import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horarios_usuario_record.g.dart';

abstract class HorariosUsuarioRecord
    implements Built<HorariosUsuarioRecord, HorariosUsuarioRecordBuilder> {
  static Serializer<HorariosUsuarioRecord> get serializer =>
      _$horariosUsuarioRecordSerializer;

  DocumentReference? get uidref;

  DateTime? get desayuno;

  DateTime? get comida;

  DateTime? get cena;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HorariosUsuarioRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horariosUsuario');

  static Stream<HorariosUsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HorariosUsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HorariosUsuarioRecord._();
  factory HorariosUsuarioRecord(
          [void Function(HorariosUsuarioRecordBuilder) updates]) =
      _$HorariosUsuarioRecord;

  static HorariosUsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHorariosUsuarioRecordData({
  DocumentReference? uidref,
  DateTime? desayuno,
  DateTime? comida,
  DateTime? cena,
}) {
  final firestoreData = serializers.toFirestore(
    HorariosUsuarioRecord.serializer,
    HorariosUsuarioRecord(
      (h) => h
        ..uidref = uidref
        ..desayuno = desayuno
        ..comida = comida
        ..cena = cena,
    ),
  );

  return firestoreData;
}
