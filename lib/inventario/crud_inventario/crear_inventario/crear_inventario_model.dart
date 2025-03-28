import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'crear_inventario_widget.dart' show CrearInventarioWidget;
import 'package:flutter/material.dart';

class CrearInventarioModel extends FlutterFlowModel<CrearInventarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  // State field(s) for TextMarca widget.
  FocusNode? textMarcaFocusNode;
  TextEditingController? textMarcaTextController;
  String? Function(BuildContext, String?)? textMarcaTextControllerValidator;
  // State field(s) for TextCantidad widget.
  FocusNode? textCantidadFocusNode;
  TextEditingController? textCantidadTextController;
  String? Function(BuildContext, String?)? textCantidadTextControllerValidator;
  // State field(s) for TextPrecio widget.
  FocusNode? textPrecioFocusNode;
  TextEditingController? textPrecioTextController;
  String? Function(BuildContext, String?)? textPrecioTextControllerValidator;
  // State field(s) for DropDownTipo widget.
  String? dropDownTipoValue;
  FormFieldController<String>? dropDownTipoValueController;
  // State field(s) for fechaCadu widget.
  DateTimeRange? fechaCaduSelectedDay;

  @override
  void initState(BuildContext context) {
    fechaCaduSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textMarcaFocusNode?.dispose();
    textMarcaTextController?.dispose();

    textCantidadFocusNode?.dispose();
    textCantidadTextController?.dispose();

    textPrecioFocusNode?.dispose();
    textPrecioTextController?.dispose();
  }
}
