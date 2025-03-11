import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModalidadRecord extends FirestoreRecord {
  ModalidadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Modalidad" field.
  String? _modalidad;
  String get modalidad => _modalidad ?? '';
  bool hasModalidad() => _modalidad != null;

  void _initializeFields() {
    _modalidad = snapshotData['Modalidad'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Modalidad');

  static Stream<ModalidadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModalidadRecord.fromSnapshot(s));

  static Future<ModalidadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModalidadRecord.fromSnapshot(s));

  static ModalidadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModalidadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModalidadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModalidadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModalidadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModalidadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModalidadRecordData({
  String? modalidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Modalidad': modalidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModalidadRecordDocumentEquality implements Equality<ModalidadRecord> {
  const ModalidadRecordDocumentEquality();

  @override
  bool equals(ModalidadRecord? e1, ModalidadRecord? e2) {
    return e1?.modalidad == e2?.modalidad;
  }

  @override
  int hash(ModalidadRecord? e) => const ListEquality().hash([e?.modalidad]);

  @override
  bool isValidKey(Object? o) => o is ModalidadRecord;
}
