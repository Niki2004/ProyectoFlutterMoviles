import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modificar_empleado_widget.dart' show ModificarEmpleadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModificarEmpleadoModel extends FlutterFlowModel<ModificarEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

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
  String? _dateOfBirthTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode3;
  TextEditingController? dateOfBirthTextController3;
  final dateOfBirthMask3 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController3Validator;
  // State field(s) for Roles widget.
  String? rolesValue;
  FormFieldController<String>? rolesValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    ageTextControllerValidator = _ageTextControllerValidator;
    dateOfBirthTextController2Validator = _dateOfBirthTextController2Validator;
  }

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
