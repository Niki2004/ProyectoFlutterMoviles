import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registrar_widget.dart' show RegistrarWidget;
import 'package:flutter/material.dart';

class RegistrarModel extends FlutterFlowModel<RegistrarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayNameInput widget.
  FocusNode? displayNameInputFocusNode;
  TextEditingController? displayNameInputTextController;
  String? Function(BuildContext, String?)?
      displayNameInputTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for photourl widget.
  FocusNode? photourlFocusNode;
  TextEditingController? photourlTextController;
  String? Function(BuildContext, String?)? photourlTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    displayNameInputFocusNode?.dispose();
    displayNameInputTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    photourlFocusNode?.dispose();
    photourlTextController?.dispose();
  }
}
