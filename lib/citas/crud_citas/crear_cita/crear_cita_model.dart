import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'crear_cita_widget.dart' show CrearCitaWidget;
import 'package:flutter/material.dart';

class CrearCitaModel extends FlutterFlowModel<CrearCitaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressTextController3;
  String? Function(BuildContext, String?)? emailAddressTextController3Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode4;
  TextEditingController? emailAddressTextController4;
  String? Function(BuildContext, String?)? emailAddressTextController4Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode5;
  TextEditingController? emailAddressTextController5;
  String? Function(BuildContext, String?)? emailAddressTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressTextController3?.dispose();

    emailAddressFocusNode4?.dispose();
    emailAddressTextController4?.dispose();

    emailAddressFocusNode5?.dispose();
    emailAddressTextController5?.dispose();
  }
}
