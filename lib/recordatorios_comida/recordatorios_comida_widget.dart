import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordatoriosComidaWidget extends StatefulWidget {
  const RecordatoriosComidaWidget({Key? key}) : super(key: key);

  @override
  _RecordatoriosComidaWidgetState createState() =>
      _RecordatoriosComidaWidgetState();
}

class _RecordatoriosComidaWidgetState extends State<RecordatoriosComidaWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<HorariosUsuarioRecord>>(
      stream: queryHorariosUsuarioRecord(
        queryBuilder: (horariosUsuarioRecord) => horariosUsuarioRecord
            .where('uidref', isEqualTo: currentUserReference),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<HorariosUsuarioRecord>
            recordatoriosComidaHorariosUsuarioRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final recordatoriosComidaHorariosUsuarioRecord =
            recordatoriosComidaHorariosUsuarioRecordList.isNotEmpty
                ? recordatoriosComidaHorariosUsuarioRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            title: Text(
              'Recordatorios',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: FlutterFlowTheme.of(context).title1Family,
                    color: FlutterFlowTheme.of(context).primaryText,
                    useGoogleFonts: GoogleFonts.asMap()
                        .containsKey(FlutterFlowTheme.of(context).title1Family),
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            functions
                                .obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .desayuno!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            ':',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            functions
                                .obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .desayuno!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await DatePicker.showTimePicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              setState(() => datePicked1 = date);
                            },
                            currentTime: getCurrentTimestamp,
                            locale: LocaleType.values.firstWhere(
                              (l) =>
                                  l.name ==
                                  FFLocalizations.of(context).languageCode,
                              orElse: () => LocaleType.en,
                            ),
                          );

                          final horariosUsuarioUpdateData =
                              createHorariosUsuarioRecordData(
                            desayuno: datePicked1,
                          );
                          await recordatoriosComidaHorariosUsuarioRecord!
                              .reference
                              .update(horariosUsuarioUpdateData);
                        },
                        text: 'Desayuno',
                        options: FFButtonOptions(
                          width: 130,
                          height: 56,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 18),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            functions
                                .obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .comida!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            ':',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            functions
                                .obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .comida!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await DatePicker.showTimePicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              setState(() => datePicked2 = date);
                            },
                            currentTime: getCurrentTimestamp,
                            locale: LocaleType.values.firstWhere(
                              (l) =>
                                  l.name ==
                                  FFLocalizations.of(context).languageCode,
                              orElse: () => LocaleType.en,
                            ),
                          );

                          final horariosUsuarioUpdateData =
                              createHorariosUsuarioRecordData(
                            comida: datePicked2,
                          );
                          await recordatoriosComidaHorariosUsuarioRecord!
                              .reference
                              .update(horariosUsuarioUpdateData);
                        },
                        text: 'Comida',
                        options: FFButtonOptions(
                          width: 130,
                          height: 56,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 18),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            functions
                                .obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .cena!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            ':',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            functions
                                .obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .cena!)
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await DatePicker.showTimePicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              setState(() => datePicked3 = date);
                            },
                            currentTime: getCurrentTimestamp,
                            locale: LocaleType.values.firstWhere(
                              (l) =>
                                  l.name ==
                                  FFLocalizations.of(context).languageCode,
                              orElse: () => LocaleType.en,
                            ),
                          );

                          final horariosUsuarioUpdateData =
                              createHorariosUsuarioRecordData(
                            cena: datePicked3,
                          );
                          await recordatoriosComidaHorariosUsuarioRecord!
                              .reference
                              .update(horariosUsuarioUpdateData);
                        },
                        text: 'Cena',
                        options: FFButtonOptions(
                          width: 130,
                          height: 56,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Home');
                            },
                            text: 'Cancelar',
                            options: FFButtonOptions(
                              width: 130,
                              height: 56,
                              color: FlutterFlowTheme.of(context).error,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText2Family,
                                    color: FlutterFlowTheme.of(context).white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText2Family),
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.goNamed('Felicitacion_horario_comida');

                              await actions.awesomeNotification(
                                1,
                                FFAppState().nombreMascota,
                                '¡Hora de desayunar!',
                                2,
                                FFAppState().nombreMascota,
                                '¡Hora de comer!',
                                3,
                                FFAppState().nombreMascota,
                                '¡Hora de cenar!',
                                functions.obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .desayuno!),
                                functions.obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .desayuno!),
                                functions.obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .comida!),
                                functions.obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .comida!),
                                functions.obtenerHora(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .cena!),
                                functions.obtenerMinutos(
                                    recordatoriosComidaHorariosUsuarioRecord!
                                        .cena!),
                                true,
                                true,
                                true,
                              );
                            },
                            text: 'Guardar',
                            options: FFButtonOptions(
                              width: 130,
                              height: 56,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText2Family,
                                    color: FlutterFlowTheme.of(context).white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText2Family),
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ],
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
  }
}
