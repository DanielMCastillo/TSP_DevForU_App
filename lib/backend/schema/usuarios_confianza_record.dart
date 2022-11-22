import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_confianza_record.g.dart';

abstract class UsuariosConfianzaRecord
    implements Built<UsuariosConfianzaRecord, UsuariosConfianzaRecordBuilder> {
  static Serializer<UsuariosConfianzaRecord> get serializer =>
      _$usuariosConfianzaRecordSerializer;

  @BuiltValueField(wireName: 'nombre_contacto')
  String? get nombreContacto;

  @BuiltValueField(wireName: 'numero_contacto')
  String? get numeroContacto;

  DocumentReference? get uidref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuariosConfianzaRecordBuilder builder) =>
      builder
        ..nombreContacto = ''
        ..numeroContacto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios_confianza');

  static Stream<UsuariosConfianzaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuariosConfianzaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuariosConfianzaRecord._();
  factory UsuariosConfianzaRecord(
          [void Function(UsuariosConfianzaRecordBuilder) updates]) =
      _$UsuariosConfianzaRecord;

  static UsuariosConfianzaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuariosConfianzaRecordData({
  String? nombreContacto,
  String? numeroContacto,
  DocumentReference? uidref,
}) {
  final firestoreData = serializers.toFirestore(
    UsuariosConfianzaRecord.serializer,
    UsuariosConfianzaRecord(
      (u) => u
        ..nombreContacto = nombreContacto
        ..numeroContacto = numeroContacto
        ..uidref = uidref,
    ),
  );

  return firestoreData;
}
