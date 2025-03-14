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

  // "Asitencia" field.
  String? _asitencia;
  String get asitencia => _asitencia ?? '';
  bool hasAsitencia() => _asitencia != null;

  // "ReferenceUsers" field.
  DocumentReference? _referenceUsers;
  DocumentReference? get referenceUsers => _referenceUsers;
  bool hasReferenceUsers() => _referenceUsers != null;

  // "Modalidas" field.
  String? _modalidas;
  String get modalidas => _modalidas ?? '';
  bool hasModalidas() => _modalidas != null;

  // "EspecialidadMedico" field.
  String? _especialidadMedico;
  String get especialidadMedico => _especialidadMedico ?? '';
  bool hasEspecialidadMedico() => _especialidadMedico != null;

  // "Fecha_Cita" field.
  String? _fechaCita;
  String get fechaCita => _fechaCita ?? '';
  bool hasFechaCita() => _fechaCita != null;

  // "Hora_Cita" field.
  String? _horaCita;
  String get horaCita => _horaCita ?? '';
  bool hasHoraCita() => _horaCita != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _apellido = snapshotData['Apellido'] as String?;
    _contactoEmergencia = snapshotData['Contacto_Emergencia'] as String?;
    _complicaciones = snapshotData['Complicaciones'] as String?;
    _sintomas = snapshotData['Sintomas'] as String?;
    _asitencia = snapshotData['Asitencia'] as String?;
    _referenceUsers = snapshotData['ReferenceUsers'] as DocumentReference?;
    _modalidas = snapshotData['Modalidas'] as String?;
    _especialidadMedico = snapshotData['EspecialidadMedico'] as String?;
    _fechaCita = snapshotData['Fecha_Cita'] as String?;
    _horaCita = snapshotData['Hora_Cita'] as String?;
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
  String? asitencia,
  DocumentReference? referenceUsers,
  String? modalidas,
  String? especialidadMedico,
  String? fechaCita,
  String? horaCita,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Apellido': apellido,
      'Contacto_Emergencia': contactoEmergencia,
      'Complicaciones': complicaciones,
      'Sintomas': sintomas,
      'Asitencia': asitencia,
      'ReferenceUsers': referenceUsers,
      'Modalidas': modalidas,
      'EspecialidadMedico': especialidadMedico,
      'Fecha_Cita': fechaCita,
      'Hora_Cita': horaCita,
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
        e1?.asitencia == e2?.asitencia &&
        e1?.referenceUsers == e2?.referenceUsers &&
        e1?.modalidas == e2?.modalidas &&
        e1?.especialidadMedico == e2?.especialidadMedico &&
        e1?.fechaCita == e2?.fechaCita &&
        e1?.horaCita == e2?.horaCita;
  }

  @override
  int hash(CitaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.contactoEmergencia,
        e?.complicaciones,
        e?.sintomas,
        e?.asitencia,
        e?.referenceUsers,
        e?.modalidas,
        e?.especialidadMedico,
        e?.fechaCita,
        e?.horaCita
      ]);

  @override
  bool isValidKey(Object? o) => o is CitaRecord;
}
