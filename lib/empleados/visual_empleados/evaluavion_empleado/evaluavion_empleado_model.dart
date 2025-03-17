import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'evaluavion_empleado_widget.dart' show EvaluavionEmpleadoWidget;
import 'package:flutter/material.dart';

class EvaluavionEmpleadoModel
    extends FlutterFlowModel<EvaluavionEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode1;
  TextEditingController? dateOfBirthTextController1;
  String? Function(BuildContext, String?)? dateOfBirthTextController1Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode2;
  TextEditingController? dateOfBirthTextController2;
  String? Function(BuildContext, String?)? dateOfBirthTextController2Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode3;
  TextEditingController? dateOfBirthTextController3;
  String? Function(BuildContext, String?)? dateOfBirthTextController3Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode4;
  TextEditingController? dateOfBirthTextController4;
  String? Function(BuildContext, String?)? dateOfBirthTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dateOfBirthFocusNode1?.dispose();
    dateOfBirthTextController1?.dispose();

    dateOfBirthFocusNode2?.dispose();
    dateOfBirthTextController2?.dispose();

    dateOfBirthFocusNode3?.dispose();
    dateOfBirthTextController3?.dispose();

    dateOfBirthFocusNode4?.dispose();
    dateOfBirthTextController4?.dispose();
  }
}
