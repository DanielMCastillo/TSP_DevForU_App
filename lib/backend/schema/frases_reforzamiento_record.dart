import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'frases_reforzamiento_record.g.dart';

abstract class FrasesReforzamientoRecord
    implements
        Built<FrasesReforzamientoRecord, FrasesReforzamientoRecordBuilder> {
  static Serializer<FrasesReforzamientoRecord> get serializer =>
      _$frasesReforzamientoRecordSerializer;

  @BuiltValueField(wireName: 'id_frase')
  int? get idFrase;

  String? get frase;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FrasesReforzamientoRecordBuilder builder) =>
      builder
        ..idFrase = 0
        ..frase = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('frases_reforzamiento');

  static Stream<FrasesReforzamientoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FrasesReforzamientoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FrasesReforzamientoRecord._();
  factory FrasesReforzamientoRecord(
          [void Function(FrasesReforzamientoRecordBuilder) updates]) =
      _$FrasesReforzamientoRecord;

  static FrasesReforzamientoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFrasesReforzamientoRecordData({
  int? idFrase,
  String? frase,
}) {
  final firestoreData = serializers.toFirestore(
    FrasesReforzamientoRecord.serializer,
    FrasesReforzamientoRecord(
      (f) => f
        ..idFrase = idFrase
        ..frase = frase,
    ),
  );

  return firestoreData;
}
