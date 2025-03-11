import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpleadoRecord extends FirestoreRecord {
  EmpleadoRecord._(
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

  // "Edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "Correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  // "Jornada" field.
  String? _jornada;
  String get jornada => _jornada ?? '';
  bool hasJornada() => _jornada != null;

  // "Comentarios_Adicionales" field.
  String? _comentariosAdicionales;
  String get comentariosAdicionales => _comentariosAdicionales ?? '';
  bool hasComentariosAdicionales() => _comentariosAdicionales != null;

  // "ReferenceEstado" field.
  DocumentReference? _referenceEstado;
  DocumentReference? get referenceEstado => _referenceEstado;
  bool hasReferenceEstado() => _referenceEstado != null;

  // "Fecha_Registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _apellido = snapshotData['Apellido'] as String?;
    _edad = castToType<int>(snapshotData['Edad']);
    _correo = snapshotData['Correo'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _departamento = snapshotData['Departamento'] as String?;
    _jornada = snapshotData['Jornada'] as String?;
    _comentariosAdicionales =
        snapshotData['Comentarios_Adicionales'] as String?;
    _referenceEstado = snapshotData['ReferenceEstado'] as DocumentReference?;
    _fechaRegistro = snapshotData['Fecha_Registro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Empleado');

  static Stream<EmpleadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpleadoRecord.fromSnapshot(s));

  static Future<EmpleadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpleadoRecord.fromSnapshot(s));

  static EmpleadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpleadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpleadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpleadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpleadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpleadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpleadoRecordData({
  String? nombre,
  String? apellido,
  int? edad,
  String? correo,
  String? foto,
  String? departamento,
  String? jornada,
  String? comentariosAdicionales,
  DocumentReference? referenceEstado,
  DateTime? fechaRegistro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Apellido': apellido,
      'Edad': edad,
      'Correo': correo,
      'Foto': foto,
      'Departamento': departamento,
      'Jornada': jornada,
      'Comentarios_Adicionales': comentariosAdicionales,
      'ReferenceEstado': referenceEstado,
      'Fecha_Registro': fechaRegistro,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpleadoRecordDocumentEquality implements Equality<EmpleadoRecord> {
  const EmpleadoRecordDocumentEquality();

  @override
  bool equals(EmpleadoRecord? e1, EmpleadoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.edad == e2?.edad &&
        e1?.correo == e2?.correo &&
        e1?.foto == e2?.foto &&
        e1?.departamento == e2?.departamento &&
        e1?.jornada == e2?.jornada &&
        e1?.comentariosAdicionales == e2?.comentariosAdicionales &&
        e1?.referenceEstado == e2?.referenceEstado &&
        e1?.fechaRegistro == e2?.fechaRegistro;
  }

  @override
  int hash(EmpleadoRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.edad,
        e?.correo,
        e?.foto,
        e?.departamento,
        e?.jornada,
        e?.comentariosAdicionales,
        e?.referenceEstado,
        e?.fechaRegistro
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpleadoRecord;
}
