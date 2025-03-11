import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitaRecord extends FirestoreRecord {
  CitaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "Contacto_Emergencia" field.
  String? _contactoEmergencia;
  String get contactoEmergencia => _contactoEmergencia ?? '';
  bool hasContactoEmergencia() => _contactoEmergencia != null;

  // "Complicaciones" field.
  String? _complicaciones;
  String get complicaciones => _complicaciones ?? '';
  bool hasComplicaciones() => _complicaciones != null;

  // "Sintomas" field.
  String? _sintomas;
  String get sintomas => _sintomas ?? '';
  bool hasSintomas() => _sintomas != null;

  // "Hora_cita" field.
  DateTime? _horaCita;
  DateTime? get horaCita => _horaCita;
  bool hasHoraCita() => _horaCita != null;

  // "ReferenceModalidad" field.
  DocumentReference? _referenceModalidad;
  DocumentReference? get referenceModalidad => _referenceModalidad;
  bool hasReferenceModalidad() => _referenceModalidad != null;

  // "ReferenceMedico" field.
  DocumentReference? _referenceMedico;
  DocumentReference? get referenceMedico => _referenceMedico;
  bool hasReferenceMedico() => _referenceMedico != null;

  // "Fecha_Cita" field.
  DateTime? _fechaCita;
  DateTime? get fechaCita => _fechaCita;
  bool hasFechaCita() => _fechaCita != null;

  // "Asitencia" field.
  String? _asitencia;
  String get asitencia => _asitencia ?? '';
  bool hasAsitencia() => _asitencia != null;

  // "ReferenceUsers" field.
  DocumentReference? _referenceUsers;
  DocumentReference? get referenceUsers => _referenceUsers;
  bool hasReferenceUsers() => _referenceUsers != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _apellido = snapshotData['Apellido'] as String?;
    _contactoEmergencia = snapshotData['Contacto_Emergencia'] as String?;
    _complicaciones = snapshotData['Complicaciones'] as String?;
    _sintomas = snapshotData['Sintomas'] as String?;
    _horaCita = snapshotData['Hora_cita'] as DateTime?;
    _referenceModalidad =
        snapshotData['ReferenceModalidad'] as DocumentReference?;
    _referenceMedico = snapshotData['ReferenceMedico'] as DocumentReference?;
    _fechaCita = snapshotData['Fecha_Cita'] as DateTime?;
    _asitencia = snapshotData['Asitencia'] as String?;
    _referenceUsers = snapshotData['ReferenceUsers'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cita');

  static Stream<CitaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitaRecord.fromSnapshot(s));

  static Future<CitaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitaRecord.fromSnapshot(s));

  static CitaRecord fromSnapshot(DocumentSnapshot snapshot) => CitaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitaRecordData({
  String? nombre,
  String? apellido,
  String? contactoEmergencia,
  String? complicaciones,
  String? sintomas,
  DateTime? horaCita,
  DocumentReference? referenceModalidad,
  DocumentReference? referenceMedico,
  DateTime? fechaCita,
  String? asitencia,
  DocumentReference? referenceUsers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Apellido': apellido,
      'Contacto_Emergencia': contactoEmergencia,
      'Complicaciones': complicaciones,
      'Sintomas': sintomas,
      'Hora_cita': horaCita,
      'ReferenceModalidad': referenceModalidad,
      'ReferenceMedico': referenceMedico,
      'Fecha_Cita': fechaCita,
      'Asitencia': asitencia,
      'ReferenceUsers': referenceUsers,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitaRecordDocumentEquality implements Equality<CitaRecord> {
  const CitaRecordDocumentEquality();

  @override
  bool equals(CitaRecord? e1, CitaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.contactoEmergencia == e2?.contactoEmergencia &&
        e1?.complicaciones == e2?.complicaciones &&
        e1?.sintomas == e2?.sintomas &&
        e1?.horaCita == e2?.horaCita &&
        e1?.referenceModalidad == e2?.referenceModalidad &&
        e1?.referenceMedico == e2?.referenceMedico &&
        e1?.fechaCita == e2?.fechaCita &&
        e1?.asitencia == e2?.asitencia &&
        e1?.referenceUsers == e2?.referenceUsers;
  }

  @override
  int hash(CitaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.contactoEmergencia,
        e?.complicaciones,
        e?.sintomas,
        e?.horaCita,
        e?.referenceModalidad,
        e?.referenceMedico,
        e?.fechaCita,
        e?.asitencia,
        e?.referenceUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is CitaRecord;
}
