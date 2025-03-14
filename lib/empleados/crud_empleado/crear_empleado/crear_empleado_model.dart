import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'crear_empleado_widget.dart' show CrearEmpleadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CrearEmpleadoModel extends FlutterFlowModel<CrearEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
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
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode5;
  TextEditingController? dateOfBirthTextController5;
  String? Function(BuildContext, String?)? dateOfBirthTextController5Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode6;
  TextEditingController? dateOfBirthTextController6;
  final dateOfBirthMask6 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController6Validator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    dateOfBirthFocusNode1?.dispose();
    dateOfBirthTextController1?.dispose();

    dateOfBirthFocusNode2?.dispose();
    dateOfBirthTextController2?.dispose();

    dateOfBirthFocusNode3?.dispose();
    dateOfBirthTextController3?.dispose();

    dateOfBirthFocusNode4?.dispose();
    dateOfBirthTextController4?.dispose();

    dateOfBirthFocusNode5?.dispose();
    dateOfBirthTextController5?.dispose();

    dateOfBirthFocusNode6?.dispose();
    dateOfBirthTextController6?.dispose();
  }
}
