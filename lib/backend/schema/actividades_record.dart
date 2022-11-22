import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'actividades_record.g.dart';

abstract class ActividadesRecord
    implements Built<ActividadesRecord, ActividadesRecordBuilder> {
  static Serializer<ActividadesRecord> get serializer =>
      _$actividadesRecordSerializer;

  @BuiltValueField(wireName: 'uid_ref')
  DocumentReference? get uidRef;

  String? get nombreActividad;

  String? get campoActividad;

  DateTime? get fechaActividad;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ActividadesRecordBuilder builder) => builder
    ..nombreActividad = ''
    ..campoActividad = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('actividades');

  static Stream<ActividadesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActividadesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActividadesRecord._();
  factory ActividadesRecord([void Function(ActividadesRecordBuilder) updates]) =
      _$ActividadesRecord;

  static ActividadesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActividadesRecordData({
  DocumentReference? uidRef,
  String? nombreActividad,
  String? campoActividad,
  DateTime? fechaActividad,
}) {
  final firestoreData = serializers.toFirestore(
    ActividadesRecord.serializer,
    ActividadesRecord(
      (a) => a
        ..uidRef = uidRef
        ..nombreActividad = nombreActividad
        ..campoActividad = campoActividad
        ..fechaActividad = fechaActividad,
    ),
  );

  return firestoreData;
}
