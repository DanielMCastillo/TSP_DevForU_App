import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horarios_record.g.dart';

abstract class HorariosRecord
    implements Built<HorariosRecord, HorariosRecordBuilder> {
  static Serializer<HorariosRecord> get serializer =>
      _$horariosRecordSerializer;

  @BuiltValueField(wireName: 'id_horario')
  int? get idHorario;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HorariosRecordBuilder builder) => builder
    ..idHorario = 0
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios');

  static Stream<HorariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HorariosRecord._();
  factory HorariosRecord([void Function(HorariosRecordBuilder) updates]) =
      _$HorariosRecord;

  static HorariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHorariosRecordData({
  int? idHorario,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    HorariosRecord.serializer,
    HorariosRecord(
      (h) => h
        ..idHorario = idHorario
        ..uid = uid,
    ),
  );

  return firestoreData;
}
