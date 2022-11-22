import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'metas_record.g.dart';

abstract class MetasRecord implements Built<MetasRecord, MetasRecordBuilder> {
  static Serializer<MetasRecord> get serializer => _$metasRecordSerializer;

  @BuiltValueField(wireName: 'uid_ref')
  DocumentReference? get uidRef;

  String? get descMeta1;

  DateTime? get fechaMeta1;

  String? get descMeta2;

  DateTime? get fechaMeta2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MetasRecordBuilder builder) => builder
    ..descMeta1 = ''
    ..descMeta2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metas');

  static Stream<MetasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MetasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MetasRecord._();
  factory MetasRecord([void Function(MetasRecordBuilder) updates]) =
      _$MetasRecord;

  static MetasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMetasRecordData({
  DocumentReference? uidRef,
  String? descMeta1,
  DateTime? fechaMeta1,
  String? descMeta2,
  DateTime? fechaMeta2,
}) {
  final firestoreData = serializers.toFirestore(
    MetasRecord.serializer,
    MetasRecord(
      (m) => m
        ..uidRef = uidRef
        ..descMeta1 = descMeta1
        ..fechaMeta1 = fechaMeta1
        ..descMeta2 = descMeta2
        ..fechaMeta2 = fechaMeta2,
    ),
  );

  return firestoreData;
}
