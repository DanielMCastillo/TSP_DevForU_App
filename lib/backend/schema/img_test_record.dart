import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'img_test_record.g.dart';

abstract class ImgTestRecord
    implements Built<ImgTestRecord, ImgTestRecordBuilder> {
  static Serializer<ImgTestRecord> get serializer => _$imgTestRecordSerializer;

  String? get haha;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImgTestRecordBuilder builder) =>
      builder..haha = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('img_test');

  static Stream<ImgTestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImgTestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImgTestRecord._();
  factory ImgTestRecord([void Function(ImgTestRecordBuilder) updates]) =
      _$ImgTestRecord;

  static ImgTestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImgTestRecordData({
  String? haha,
}) {
  final firestoreData = serializers.toFirestore(
    ImgTestRecord.serializer,
    ImgTestRecord(
      (i) => i..haha = haha,
    ),
  );

  return firestoreData;
}
