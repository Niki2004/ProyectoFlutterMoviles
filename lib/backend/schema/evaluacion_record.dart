import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvaluacionRecord extends FirestoreRecord {
  EvaluacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Metas_Cumplidad" field.
  String? _metasCumplidad;
  String get metasCumplidad => _metasCumplidad ?? '';
  bool hasMetasCumplidad() => _metasCumplidad != null;

  // "Habilidades_Laborales" field.
  String? _habilidadesLaborales;
  String get habilidadesLaborales => _habilidadesLaborales ?? '';
  bool hasHabilidadesLaborales() => _habilidadesLaborales != null;

  // "ReferenceEmpleado" field.
  DocumentReference? _referenceEmpleado;
  DocumentReference? get referenceEmpleado => _referenceEmpleado;
  bool hasReferenceEmpleado() => _referenceEmpleado != null;

  // "Fecha_Registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "Porcentaje_Evaluado" field.
  int? _porcentajeEvaluado;
  int get porcentajeEvaluado => _porcentajeEvaluado ?? 0;
  bool hasPorcentajeEvaluado() => _porcentajeEvaluado != null;

  void _initializeFields() {
    _metasCumplidad = snapshotData['Metas_Cumplidad'] as String?;
    _habilidadesLaborales = snapshotData['Habilidades_Laborales'] as String?;
    _referenceEmpleado =
        snapshotData['ReferenceEmpleado'] as DocumentReference?;
    _fechaRegistro = snapshotData['Fecha_Registro'] as DateTime?;
    _porcentajeEvaluado = castToType<int>(snapshotData['Porcentaje_Evaluado']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Evaluacion');

  static Stream<EvaluacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvaluacionRecord.fromSnapshot(s));

  static Future<EvaluacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvaluacionRecord.fromSnapshot(s));

  static EvaluacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvaluacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvaluacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvaluacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvaluacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvaluacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvaluacionRecordData({
  String? metasCumplidad,
  String? habilidadesLaborales,
  DocumentReference? referenceEmpleado,
  DateTime? fechaRegistro,
  int? porcentajeEvaluado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Metas_Cumplidad': metasCumplidad,
      'Habilidades_Laborales': habilidadesLaborales,
      'ReferenceEmpleado': referenceEmpleado,
      'Fecha_Registro': fechaRegistro,
      'Porcentaje_Evaluado': porcentajeEvaluado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvaluacionRecordDocumentEquality implements Equality<EvaluacionRecord> {
  const EvaluacionRecordDocumentEquality();

  @override
  bool equals(EvaluacionRecord? e1, EvaluacionRecord? e2) {
    return e1?.metasCumplidad == e2?.metasCumplidad &&
        e1?.habilidadesLaborales == e2?.habilidadesLaborales &&
        e1?.referenceEmpleado == e2?.referenceEmpleado &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.porcentajeEvaluado == e2?.porcentajeEvaluado;
  }

  @override
  int hash(EvaluacionRecord? e) => const ListEquality().hash([
        e?.metasCumplidad,
        e?.habilidadesLaborales,
        e?.referenceEmpleado,
        e?.fechaRegistro,
        e?.porcentajeEvaluado
      ]);

  @override
  bool isValidKey(Object? o) => o is EvaluacionRecord;
}
