import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'buscar_empleados_model.dart';
export 'buscar_empleados_model.dart';

class BuscarEmpleadosWidget extends StatefulWidget {
  const BuscarEmpleadosWidget({super.key});

  static String routeName = 'Buscar_Empleados';
  static String routePath = '/buscarEmpleados';

  @override
  State<BuscarEmpleadosWidget> createState() => _BuscarEmpleadosWidgetState();
}

class _BuscarEmpleadosWidgetState extends State<BuscarEmpleadosWidget> {
  late BuscarEmpleadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscarEmpleadosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().buscarempleado = false;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<EmpleadoRecord>>(
      stream: queryEmpleadoRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<EmpleadoRecord> buscarEmpleadosEmpleadoRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF0B7B82),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(ClaseEmpleadoWidget.routeName);
                },
              ),
              title: Text(
                'Buscar Empleados ',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  if (!FFAppState().buscarempleado)
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.89),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 100.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final listaEmpleados =
                                buscarEmpleadosEmpleadoRecordList.toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listaEmpleados.length,
                              itemBuilder: (context, listaEmpleadosIndex) {
                                final listaEmpleadosItem =
                                    listaEmpleados[listaEmpleadosIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 8.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        ModificarEmpleadoWidget.routeName,
                                        queryParameters: {
                                          'nombre': serializeParam(
                                            listaEmpleadosItem.nombre,
                                            ParamType.String,
                                          ),
                                          'apellidos': serializeParam(
                                            listaEmpleadosItem.apellido,
                                            ParamType.String,
                                          ),
                                          'edad': serializeParam(
                                            listaEmpleadosItem.edad,
                                            ParamType.int,
                                          ),
                                          'cedula': serializeParam(
                                            listaEmpleadosItem.cedula,
                                            ParamType.String,
                                          ),
                                          'correo': serializeParam(
                                            listaEmpleadosItem.correo,
                                            ParamType.String,
                                          ),
                                          'departamento': serializeParam(
                                            listaEmpleadosItem.departamento,
                                            ParamType.String,
                                          ),
                                          'jornada': serializeParam(
                                            listaEmpleadosItem.jornada,
                                            ParamType.String,
                                          ),
                                          'comentarios': serializeParam(
                                            listaEmpleadosItem
                                                .comentariosAdicionales,
                                            ParamType.String,
                                          ),
                                          'fecha': serializeParam(
                                            listaEmpleadosItem.fechaRegistro,
                                            ParamType.String,
                                          ),
                                          'imagen': serializeParam(
                                            listaEmpleadosItem.foto,
                                            ParamType.String,
                                          ),
                                          'estado': serializeParam(
                                            listaEmpleadosItem.estado,
                                            ParamType.bool,
                                          ),
                                          'empleadosparaemtro': serializeParam(
                                            listaEmpleadosItem.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x32000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(26.0),
                                              child: Image.network(
                                                listaEmpleadosItem.foto,
                                                width: 36.0,
                                                height: 36.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final todos =
                                                        buscarEmpleadosEmpleadoRecordList
                                                            .map((e) => e)
                                                            .toList();

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          todos.length,
                                                          (todosIndex) {
                                                        final todosItem =
                                                            todos[todosIndex];
                                                        return Text(
                                                          listaEmpleadosItem
                                                              .nombre,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  ModificarEmpleadoWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'nombre': serializeParam(
                                                      listaEmpleadosItem.nombre,
                                                      ParamType.String,
                                                    ),
                                                    'apellidos': serializeParam(
                                                      listaEmpleadosItem
                                                          .apellido,
                                                      ParamType.String,
                                                    ),
                                                    'edad': serializeParam(
                                                      listaEmpleadosItem.edad,
                                                      ParamType.int,
                                                    ),
                                                    'cedula': serializeParam(
                                                      listaEmpleadosItem.cedula,
                                                      ParamType.String,
                                                    ),
                                                    'correo': serializeParam(
                                                      listaEmpleadosItem.correo,
                                                      ParamType.String,
                                                    ),
                                                    'departamento':
                                                        serializeParam(
                                                      listaEmpleadosItem
                                                          .departamento,
                                                      ParamType.String,
                                                    ),
                                                    'jornada': serializeParam(
                                                      listaEmpleadosItem
                                                          .jornada,
                                                      ParamType.String,
                                                    ),
                                                    'comentarios':
                                                        serializeParam(
                                                      listaEmpleadosItem
                                                          .comentariosAdicionales,
                                                      ParamType.String,
                                                    ),
                                                    'fecha': serializeParam(
                                                      listaEmpleadosItem
                                                          .fechaRegistro,
                                                      ParamType.String,
                                                    ),
                                                    'imagen': serializeParam(
                                                      listaEmpleadosItem.foto,
                                                      ParamType.String,
                                                    ),
                                                    'estado': serializeParam(
                                                      listaEmpleadosItem.estado,
                                                      ParamType.bool,
                                                    ),
                                                    'empleadosparaemtro':
                                                        serializeParam(
                                                      listaEmpleadosItem
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              text: 'Editar',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF0B7B82),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(150.0, 40.0, 110.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 200.0,
                              child: Autocomplete<String>(
                                initialValue: TextEditingValue(),
                                optionsBuilder: (textEditingValue) {
                                  if (textEditingValue.text == '') {
                                    return const Iterable<String>.empty();
                                  }
                                  return buscarEmpleadosEmpleadoRecordList
                                      .map((e) => e.nombre)
                                      .toList()
                                      .where((option) {
                                    final lowercaseOption =
                                        option.toLowerCase();
                                    return lowercaseOption.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                },
                                optionsViewBuilder:
                                    (context, onSelected, options) {
                                  return AutocompleteOptionsList(
                                    textFieldKey: _model.textFieldKey,
                                    textController: _model.textController!,
                                    options: options.toList(),
                                    onSelected: onSelected,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    textHighlightStyle: TextStyle(),
                                    elevation: 4.0,
                                    optionBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    optionHighlightColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    maxHeight: 200.0,
                                  );
                                },
                                onSelected: (String selection) {
                                  safeSetState(() => _model
                                      .textFieldSelectedOption = selection);
                                  FocusScope.of(context).unfocus();
                                },
                                fieldViewBuilder: (
                                  context,
                                  textEditingController,
                                  focusNode,
                                  onEditingComplete,
                                ) {
                                  _model.textFieldFocusNode = focusNode;

                                  _model.textController = textEditingController;
                                  return TextFormField(
                                    key: _model.textFieldKey,
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    onEditingComplete: onEditingComplete,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        safeSetState(() {
                                          _model
                                              .simpleSearchResults = TextSearch(
                                            buscarEmpleadosEmpleadoRecordList
                                                .map(
                                                  (record) =>
                                                      TextSearchItem.fromTerms(
                                                          record,
                                                          [record.nombre]),
                                                )
                                                .toList(),
                                          )
                                              .search(
                                                  _model.textController.text)
                                              .map((r) => r.object)
                                              .toList();
                                          ;
                                        });
                                        FFAppState().buscarempleado = true;
                                        safeSetState(() {});
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Buscar Empleado ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  );
                                },
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Color(0xFF0B7B82),
                            icon: Icon(
                              Icons.search,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              safeSetState(() {
                                _model.textController?.clear();
                              });
                              FFAppState().buscarempleado = false;
                              safeSetState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (FFAppState().buscarempleado)
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.41),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 120.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final listaEmpleados =
                                _model.simpleSearchResults.toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listaEmpleados.length,
                              itemBuilder: (context, listaEmpleadosIndex) {
                                final listaEmpleadosItem =
                                    listaEmpleados[listaEmpleadosIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x32000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(26.0),
                                            child: Image.network(
                                              listaEmpleadosItem.foto,
                                              width: 36.0,
                                              height: 36.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final todos =
                                                      buscarEmpleadosEmpleadoRecordList
                                                          .map((e) => e)
                                                          .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        todos.length,
                                                        (todosIndex) {
                                                      final todosItem =
                                                          todos[todosIndex];
                                                      return Text(
                                                        todosItem.nombre,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                ModificarEmpleadoWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'nombre': serializeParam(
                                                    listaEmpleadosItem.nombre,
                                                    ParamType.String,
                                                  ),
                                                  'apellidos': serializeParam(
                                                    listaEmpleadosItem.apellido,
                                                    ParamType.String,
                                                  ),
                                                  'edad': serializeParam(
                                                    listaEmpleadosItem.edad,
                                                    ParamType.int,
                                                  ),
                                                  'cedula': serializeParam(
                                                    listaEmpleadosItem.cedula,
                                                    ParamType.String,
                                                  ),
                                                  'correo': serializeParam(
                                                    listaEmpleadosItem.correo,
                                                    ParamType.String,
                                                  ),
                                                  'departamento':
                                                      serializeParam(
                                                    listaEmpleadosItem
                                                        .departamento,
                                                    ParamType.String,
                                                  ),
                                                  'jornada': serializeParam(
                                                    listaEmpleadosItem.jornada,
                                                    ParamType.String,
                                                  ),
                                                  'comentarios': serializeParam(
                                                    listaEmpleadosItem
                                                        .comentariosAdicionales,
                                                    ParamType.String,
                                                  ),
                                                  'fecha': serializeParam(
                                                    listaEmpleadosItem
                                                        .fechaRegistro,
                                                    ParamType.String,
                                                  ),
                                                  'imagen': serializeParam(
                                                    listaEmpleadosItem.foto,
                                                    ParamType.String,
                                                  ),
                                                  'estado': serializeParam(
                                                    listaEmpleadosItem.estado,
                                                    ParamType.bool,
                                                  ),
                                                  'empleadosparaemtro':
                                                      serializeParam(
                                                    listaEmpleadosItem
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            text: 'Editar',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF0B7B82),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
