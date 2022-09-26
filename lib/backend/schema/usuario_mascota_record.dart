import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_mascota_record.g.dart';

abstract class UsuarioMascotaRecord
    implements Built<UsuarioMascotaRecord, UsuarioMascotaRecordBuilder> {
  static Serializer<UsuarioMascotaRecord> get serializer =>
      _$usuarioMascotaRecordSerializer;

  String? get uid;

  @BuiltValueField(wireName: 'id_mascota')
  int? get idMascota;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioMascotaRecordBuilder builder) => builder
    ..uid = ''
    ..idMascota = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario_mascota');

  static Stream<UsuarioMascotaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioMascotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioMascotaRecord._();
  factory UsuarioMascotaRecord(
          [void Function(UsuarioMascotaRecordBuilder) updates]) =
      _$UsuarioMascotaRecord;

  static UsuarioMascotaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioMascotaRecordData({
  String? uid,
  int? idMascota,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioMascotaRecord.serializer,
    UsuarioMascotaRecord(
      (u) => u
        ..uid = uid
        ..idMascota = idMascota,
    ),
  );

  return firestoreData;
}
