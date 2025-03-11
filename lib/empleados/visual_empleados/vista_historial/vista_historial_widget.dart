import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vista_historial_model.dart';
export 'vista_historial_model.dart';

class VistaHistorialWidget extends StatefulWidget {
  const VistaHistorialWidget({super.key});

  static String routeName = 'VistaHistorial';
  static String routePath = '/vistaHistorial';

  @override
  State<VistaHistorialWidget> createState() => _VistaHistorialWidgetState();
}

class _VistaHistorialWidgetState extends State<VistaHistorialWidget> {
  late VistaHistorialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VistaHistorialModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
