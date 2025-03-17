import '/flutter_flow/flutter_flow_util.dart';
import 'vista_invetario02_widget.dart' show VistaInvetario02Widget;
import 'package:flutter/material.dart';

class VistaInvetario02Model extends FlutterFlowModel<VistaInvetario02Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fecha widget.
  FocusNode? fechaFocusNode;
  TextEditingController? fechaTextController;
  String? Function(BuildContext, String?)? fechaTextControllerValidator;
  // State field(s) for Areas widget.
  FocusNode? areasFocusNode;
  TextEditingController? areasTextController;
  String? Function(BuildContext, String?)? areasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fechaFocusNode?.dispose();
    fechaTextController?.dispose();

    areasFocusNode?.dispose();
    areasTextController?.dispose();
  }
}
