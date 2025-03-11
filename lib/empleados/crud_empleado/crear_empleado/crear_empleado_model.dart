import '/flutter_flow/flutter_flow_util.dart';
import 'crear_empleado_widget.dart' show CrearEmpleadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CrearEmpleadoModel extends FlutterFlowModel<CrearEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode1;
  TextEditingController? dateOfBirthTextController1;
  final dateOfBirthMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController1Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode2;
  TextEditingController? dateOfBirthTextController2;
  final dateOfBirthMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController2Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode3;
  TextEditingController? dateOfBirthTextController3;
  final dateOfBirthMask3 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    dateOfBirthFocusNode1?.dispose();
    dateOfBirthTextController1?.dispose();

    dateOfBirthFocusNode2?.dispose();
    dateOfBirthTextController2?.dispose();

    dateOfBirthFocusNode3?.dispose();
    dateOfBirthTextController3?.dispose();
  }
}
