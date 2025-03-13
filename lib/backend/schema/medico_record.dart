import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicoRecord extends FirestoreRecord {
  MedicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Especialidad" field.
  String? _especialidad;
  String get especialidad => _especialidad ?? '';
  bool hasEspecialidad() => _especialidad != null;

  // "Horario_Inicio" field.
  DateTime? _horarioInicio;
  DateTime? get horarioInicio => _horarioInicio;
  bool hasHorarioInicio() => _horarioInicio != null;

  // "Horario_Final" field.
  DateTime? _horarioFinal;
  DateTime? get horarioFinal => _horarioFinal;
  bool hasHorarioFinal() => _horarioFinal != null;

  // "NombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _especialidad = snapshotData['Especialidad'] as String?;
    _horarioInicio = snapshotData['Horario_Inicio'] as DateTime?;
    _horarioFinal = snapshotData['Horario_Final'] as DateTime?;
    _nombreCompleto = snapshotData['NombreCompleto'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medico');

  static Stream<MedicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicoRecord.fromSnapshot(s));

  static Future<MedicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicoRecord.fromSnapshot(s));

  static MedicoRecord fromSnapshot(DocumentSnapshot snapshot) => MedicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicoRecordData({
  String? especialidad,
  DateTime? horarioInicio,
  DateTime? horarioFinal,
  String? nombreCompleto,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Especialidad': especialidad,
      'Horario_Inicio': horarioInicio,
      'Horario_Final': horarioFinal,
      'NombreCompleto': nombreCompleto,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicoRecordDocumentEquality implements Equality<MedicoRecord> {
  const MedicoRecordDocumentEquality();

  @override
  bool equals(MedicoRecord? e1, MedicoRecord? e2) {
    return e1?.especialidad == e2?.especialidad &&
        e1?.horarioInicio == e2?.horarioInicio &&
        e1?.horarioFinal == e2?.horarioFinal &&
        e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(MedicoRecord? e) => const ListEquality().hash([
        e?.especialidad,
        e?.horarioInicio,
        e?.horarioFinal,
        e?.nombreCompleto,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicoRecord;
}
