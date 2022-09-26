import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_notas_record.g.dart';

abstract class UsuarioNotasRecord
    implements Built<UsuarioNotasRecord, UsuarioNotasRecordBuilder> {
  static Serializer<UsuarioNotasRecord> get serializer =>
      _$usuarioNotasRecordSerializer;

  String? get uid;

  @BuiltValueField(wireName: 'id_nota')
  int? get idNota;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioNotasRecordBuilder builder) => builder
    ..uid = ''
    ..idNota = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario_notas');

  static Stream<UsuarioNotasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioNotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioNotasRecord._();
  factory UsuarioNotasRecord(
          [void Function(UsuarioNotasRecordBuilder) updates]) =
      _$UsuarioNotasRecord;

  static UsuarioNotasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioNotasRecordData({
  String? uid,
  int? idNota,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioNotasRecord.serializer,
    UsuarioNotasRecord(
      (u) => u
        ..uid = uid
        ..idNota = idNota,
    ),
  );

  return firestoreData;
}
