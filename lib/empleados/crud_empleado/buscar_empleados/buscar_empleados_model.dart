import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'buscar_empleados_widget.dart' show BuscarEmpleadosWidget;
import 'package:flutter/material.dart';

class BuscarEmpleadosModel extends FlutterFlowModel<BuscarEmpleadosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
