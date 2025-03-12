import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EjemploRecord extends FirestoreRecord {
  EjemploRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "medico" field.
  String? _medico;
  String get medico => _medico ?? '';
  bool hasMedico() => _medico != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _medico = snapshotData['medico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ejemplo');

  static Stream<EjemploRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EjemploRecord.fromSnapshot(s));

  static Future<EjemploRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EjemploRecord.fromSnapshot(s));

  static EjemploRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EjemploRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EjemploRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EjemploRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EjemploRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EjemploRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEjemploRecordData({
  String? nombre,
  String? medico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'medico': medico,
    }.withoutNulls,
  );

  return firestoreData;
}

class EjemploRecordDocumentEquality implements Equality<EjemploRecord> {
  const EjemploRecordDocumentEquality();

  @override
  bool equals(EjemploRecord? e1, EjemploRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.medico == e2?.medico;
  }

  @override
  int hash(EjemploRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.medico]);

  @override
  bool isValidKey(Object? o) => o is EjemploRecord;
}
