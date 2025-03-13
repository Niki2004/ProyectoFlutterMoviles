import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaRecord extends FirestoreRecord {
  AgendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "Hour" field.
  DateTime? _hour;
  DateTime? get hour => _hour;
  bool hasHour() => _hour != null;

  // "Agendador" field.
  DocumentReference? _agendador;
  DocumentReference? get agendador => _agendador;
  bool hasAgendador() => _agendador != null;

  // "ReferenceUsers" field.
  DocumentReference? _referenceUsers;
  DocumentReference? get referenceUsers => _referenceUsers;
  bool hasReferenceUsers() => _referenceUsers != null;

  void _initializeFields() {
    _day = snapshotData['Day'] as DateTime?;
    _hour = snapshotData['Hour'] as DateTime?;
    _agendador = snapshotData['Agendador'] as DocumentReference?;
    _referenceUsers = snapshotData['ReferenceUsers'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Agenda');

  static Stream<AgendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaRecord.fromSnapshot(s));

  static Future<AgendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaRecord.fromSnapshot(s));

  static AgendaRecord fromSnapshot(DocumentSnapshot snapshot) => AgendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaRecordData({
  DateTime? day,
  DateTime? hour,
  DocumentReference? agendador,
  DocumentReference? referenceUsers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Day': day,
      'Hour': hour,
      'Agendador': agendador,
      'ReferenceUsers': referenceUsers,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaRecordDocumentEquality implements Equality<AgendaRecord> {
  const AgendaRecordDocumentEquality();

  @override
  bool equals(AgendaRecord? e1, AgendaRecord? e2) {
    return e1?.day == e2?.day &&
        e1?.hour == e2?.hour &&
        e1?.agendador == e2?.agendador &&
        e1?.referenceUsers == e2?.referenceUsers;
  }

  @override
  int hash(AgendaRecord? e) => const ListEquality()
      .hash([e?.day, e?.hour, e?.agendador, e?.referenceUsers]);

  @override
  bool isValidKey(Object? o) => o is AgendaRecord;
}
