import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'agendar_fecha_model.dart';
export 'agendar_fecha_model.dart';

class AgendarFechaWidget extends StatefulWidget {
  const AgendarFechaWidget({
    super.key,
    required this.referenciadeMedico,
  });

  final DocumentReference? referenciadeMedico;

  static String routeName = 'AgendarFecha';
  static String routePath = '/agendarFecha';

  @override
  State<AgendarFechaWidget> createState() => _AgendarFechaWidgetState();
}

class _AgendarFechaWidgetState extends State<AgendarFechaWidget> {
  late AgendarFechaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendarFechaModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<DisponibilidadRecord>>(
            stream: queryDisponibilidadRecord(
              queryBuilder: (disponibilidadRecord) => disponibilidadRecord
                  .where(
                    'Day',
                    isEqualTo: _model.calendarSelectedDay?.start,
                  )
                  .where(
                    'ReferenceUser',
                    isEqualTo: widget.referenciadeMedico,
                  ),
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<DisponibilidadRecord> columnDisponibilidadRecordList =
                  snapshot.data!;
              final columnDisponibilidadRecord =
                  columnDisponibilidadRecordList.isNotEmpty
                      ? columnDisponibilidadRecordList.first
                      : null;

              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowCalendar(
                    color: FlutterFlowTheme.of(context).secondary,
                    iconColor: FlutterFlowTheme.of(context).primaryBackground,
                    weekFormat: false,
                    weekStartsMonday: false,
                    rowHeight: 48.0,
                    onChange: (DateTimeRange? newSelectedDate) {
                      safeSetState(
                          () => _model.calendarSelectedDay = newSelectedDate);
                    },
                    titleStyle:
                        FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter Tight',
                              letterSpacing: 0.0,
                            ),
                    dayOfWeekStyle:
                        FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                    dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    selectedDateStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter Tight',
                              letterSpacing: 0.0,
                            ),
                    inactiveDateStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final listaHoras =
                            columnDisponibilidadRecord?.listHours.toList() ??
                                [];

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listaHoras.length,
                          itemBuilder: (context, listaHorasIndex) {
                            final listaHorasItem = listaHoras[listaHorasIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        600.0, 0.0, 0.0, 20.0),
                                    child: Container(
                                      width: 314.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                "jm", listaHorasItem),
                                            'Sin hora',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
