import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioRecord extends FirestoreRecord {
  InventarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre_Articulo" field.
  String? _nombreArticulo;
  String get nombreArticulo => _nombreArticulo ?? '';
  bool hasNombreArticulo() => _nombreArticulo != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "Tipo_Articulo" field.
  String? _tipoArticulo;
  String get tipoArticulo => _tipoArticulo ?? '';
  bool hasTipoArticulo() => _tipoArticulo != null;

  // "Fecha_Caducidad" field.
  DateTime? _fechaCaducidad;
  DateTime? get fechaCaducidad => _fechaCaducidad;
  bool hasFechaCaducidad() => _fechaCaducidad != null;

  // "Fecha_Ingreso" field.
  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _fechaIngreso;
  bool hasFechaIngreso() => _fechaIngreso != null;

  // "Estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _nombreArticulo = snapshotData['Nombre_Articulo'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _precio = castToType<double>(snapshotData['Precio']);
    _imagen = snapshotData['Imagen'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _sku = snapshotData['Sku'] as String?;
    _tipoArticulo = snapshotData['Tipo_Articulo'] as String?;
    _fechaCaducidad = snapshotData['Fecha_Caducidad'] as DateTime?;
    _fechaIngreso = snapshotData['Fecha_Ingreso'] as DateTime?;
    _estado = snapshotData['Estado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioRecord.fromSnapshot(s));

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioRecord.fromSnapshot(s));

  static InventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioRecordData({
  String? nombreArticulo,
  String? marca,
  int? cantidad,
  double? precio,
  String? imagen,
  String? descripcion,
  String? sku,
  String? tipoArticulo,
  DateTime? fechaCaducidad,
  DateTime? fechaIngreso,
  bool? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Articulo': nombreArticulo,
      'Marca': marca,
      'Cantidad': cantidad,
      'Precio': precio,
      'Imagen': imagen,
      'Descripcion': descripcion,
      'Sku': sku,
      'Tipo_Articulo': tipoArticulo,
      'Fecha_Caducidad': fechaCaducidad,
      'Fecha_Ingreso': fechaIngreso,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioRecordDocumentEquality implements Equality<InventarioRecord> {
  const InventarioRecordDocumentEquality();

  @override
  bool equals(InventarioRecord? e1, InventarioRecord? e2) {
    return e1?.nombreArticulo == e2?.nombreArticulo &&
        e1?.marca == e2?.marca &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen &&
        e1?.descripcion == e2?.descripcion &&
        e1?.sku == e2?.sku &&
        e1?.tipoArticulo == e2?.tipoArticulo &&
        e1?.fechaCaducidad == e2?.fechaCaducidad &&
        e1?.fechaIngreso == e2?.fechaIngreso &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(InventarioRecord? e) => const ListEquality().hash([
        e?.nombreArticulo,
        e?.marca,
        e?.cantidad,
        e?.precio,
        e?.imagen,
        e?.descripcion,
        e?.sku,
        e?.tipoArticulo,
        e?.fechaCaducidad,
        e?.fechaIngreso,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioRecord;
}
