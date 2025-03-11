import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotaMedicoRecord extends FirestoreRecord {
  NotaMedicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nota_medico" field.
  String? _notaMedico;
  String get notaMedico => _notaMedico ?? '';
  bool hasNotaMedico() => _notaMedico != null;

  // "Comentario_Adicional" field.
  String? _comentarioAdicional;
  String get comentarioAdicional => _comentarioAdicional ?? '';
  bool hasComentarioAdicional() => _comentarioAdicional != null;

  // "ReferenceCita" field.
  DocumentReference? _referenceCita;
  DocumentReference? get referenceCita => _referenceCita;
  bool hasReferenceCita() => _referenceCita != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _notaMedico = snapshotData['Nota_medico'] as String?;
    _comentarioAdicional = snapshotData['Comentario_Adicional'] as String?;
    _referenceCita = snapshotData['ReferenceCita'] as DocumentReference?;
    _fecha = snapshotData['Fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Nota_Medico');

  static Stream<NotaMedicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotaMedicoRecord.fromSnapshot(s));

  static Future<NotaMedicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotaMedicoRecord.fromSnapshot(s));

  static NotaMedicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotaMedicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotaMedicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotaMedicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotaMedicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotaMedicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotaMedicoRecordData({
  String? notaMedico,
  String? comentarioAdicional,
  DocumentReference? referenceCita,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nota_medico': notaMedico,
      'Comentario_Adicional': comentarioAdicional,
      'ReferenceCita': referenceCita,
      'Fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotaMedicoRecordDocumentEquality implements Equality<NotaMedicoRecord> {
  const NotaMedicoRecordDocumentEquality();

  @override
  bool equals(NotaMedicoRecord? e1, NotaMedicoRecord? e2) {
    return e1?.notaMedico == e2?.notaMedico &&
        e1?.comentarioAdicional == e2?.comentarioAdicional &&
        e1?.referenceCita == e2?.referenceCita &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(NotaMedicoRecord? e) => const ListEquality().hash(
      [e?.notaMedico, e?.comentarioAdicional, e?.referenceCita, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is NotaMedicoRecord;
}
