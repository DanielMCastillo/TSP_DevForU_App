import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mascotas_record.g.dart';

abstract class MascotasRecord
    implements Built<MascotasRecord, MascotasRecordBuilder> {
  static Serializer<MascotasRecord> get serializer =>
      _$mascotasRecordSerializer;

  @BuiltValueField(wireName: 'id_mascota')
  int? get idMascota;

  @BuiltValueField(wireName: 'nombre_mascota')
  String? get nombreMascota;

  @BuiltValueField(wireName: 'animal_mascota')
  String? get animalMascota;

  @BuiltValueField(wireName: 'imagen_mascota')
  String? get imagenMascota;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MascotasRecordBuilder builder) => builder
    ..idMascota = 0
    ..nombreMascota = ''
    ..animalMascota = ''
    ..imagenMascota = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mascotas');

  static Stream<MascotasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MascotasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MascotasRecord._();
  factory MascotasRecord([void Function(MascotasRecordBuilder) updates]) =
      _$MascotasRecord;

  static MascotasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMascotasRecordData({
  int? idMascota,
  String? nombreMascota,
  String? animalMascota,
  String? imagenMascota,
}) {
  final firestoreData = serializers.toFirestore(
    MascotasRecord.serializer,
    MascotasRecord(
      (m) => m
        ..idMascota = idMascota
        ..nombreMascota = nombreMascota
        ..animalMascota = animalMascota
        ..imagenMascota = imagenMascota,
    ),
  );

  return firestoreData;
}
