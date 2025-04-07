import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'vista_inventario_buscar_widget.dart' show VistaInventarioBuscarWidget;
import 'package:flutter/material.dart';

class VistaInventarioBuscarModel
    extends FlutterFlowModel<VistaInventarioBuscarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextBuscar widget.
  final textBuscarKey = GlobalKey();
  FocusNode? textBuscarFocusNode;
  TextEditingController? textBuscarTextController;
  String? textBuscarSelectedOption;
  String? Function(BuildContext, String?)? textBuscarTextControllerValidator;
  List<InventarioRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textBuscarFocusNode?.dispose();
  }
}
