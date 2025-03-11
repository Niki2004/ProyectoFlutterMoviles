import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespaldoRecord extends FirestoreRecord {
  RespaldoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tipo_Respaldo" field.
  String? _tipoRespaldo;
  String get tipoRespaldo => _tipoRespaldo ?? '';
  bool hasTipoRespaldo() => _tipoRespaldo != null;

  // "ReferenceUsuario" field.
  DocumentReference? _referenceUsuario;
  DocumentReference? get referenceUsuario => _referenceUsuario;
  bool hasReferenceUsuario() => _referenceUsuario != null;

  // "Fecha_Respaldo" field.
  DateTime? _fechaRespaldo;
  DateTime? get fechaRespaldo => _fechaRespaldo;
  bool hasFechaRespaldo() => _fechaRespaldo != null;

  void _initializeFields() {
    _tipoRespaldo = snapshotData['Tipo_Respaldo'] as String?;
    _referenceUsuario = snapshotData['ReferenceUsuario'] as DocumentReference?;
    _fechaRespaldo = snapshotData['Fecha_Respaldo'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Respaldo');

  static Stream<RespaldoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RespaldoRecord.fromSnapshot(s));

  static Future<RespaldoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RespaldoRecord.fromSnapshot(s));

  static RespaldoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RespaldoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RespaldoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RespaldoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RespaldoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RespaldoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRespaldoRecordData({
  String? tipoRespaldo,
  DocumentReference? referenceUsuario,
  DateTime? fechaRespaldo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tipo_Respaldo': tipoRespaldo,
      'ReferenceUsuario': referenceUsuario,
      'Fecha_Respaldo': fechaRespaldo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RespaldoRecordDocumentEquality implements Equality<RespaldoRecord> {
  const RespaldoRecordDocumentEquality();

  @override
  bool equals(RespaldoRecord? e1, RespaldoRecord? e2) {
    return e1?.tipoRespaldo == e2?.tipoRespaldo &&
        e1?.referenceUsuario == e2?.referenceUsuario &&
        e1?.fechaRespaldo == e2?.fechaRespaldo;
  }

  @override
  int hash(RespaldoRecord? e) => const ListEquality()
      .hash([e?.tipoRespaldo, e?.referenceUsuario, e?.fechaRespaldo]);

  @override
  bool isValidKey(Object? o) => o is RespaldoRecord;
}
