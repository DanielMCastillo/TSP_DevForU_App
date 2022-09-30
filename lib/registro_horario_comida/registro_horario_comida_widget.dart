import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroHorarioComidaWidget extends StatefulWidget {
  const RegistroHorarioComidaWidget({Key? key}) : super(key: key);

  @override
  _RegistroHorarioComidaWidgetState createState() =>
      _RegistroHorarioComidaWidgetState();
}

class _RegistroHorarioComidaWidgetState
    extends State<RegistroHorarioComidaWidget> with TickerProviderStateMixin {
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: FaIcon(
            FontAwesomeIcons.arrowCircleLeft,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'Perfil',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                ),
              },
            );
          },
        ),
        title: Text(
          'Registra tu horario',
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 1,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (dateTimeFormat('Hm', datePicked1) == null ||
                        dateTimeFormat('Hm', datePicked1) == '')
                      StreamBuilder<List<HorariosRecord>>(
                        stream: queryHorariosRecord(
                          queryBuilder: (horariosRecord) =>
                              horariosRecord.where('uid_ref',
                                  isEqualTo: currentUserReference),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitRing(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<HorariosRecord> desayunoBDHorariosRecordList =
                              snapshot.data!;
                          final desayunoBDHorariosRecord =
                              desayunoBDHorariosRecordList.isNotEmpty
                                  ? desayunoBDHorariosRecordList.first
                                  : null;
                          return Text(
                            desayunoBDHorariosRecord!.desayuno!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                    ),
                          );
                        },
                      ),
                    if (dateTimeFormat('Hm', datePicked1) != null &&
                        dateTimeFormat('Hm', datePicked1) != '')
                      Text(
                        dateTimeFormat('Hm', datePicked1),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                      ),
                    FFButtonWidget(
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
                      },
                      text: 'Desayuno',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (dateTimeFormat('Hm', datePicked2) == null ||
                        dateTimeFormat('Hm', datePicked2) == '')
                      StreamBuilder<List<HorariosRecord>>(
                        stream: queryHorariosRecord(
                          queryBuilder: (horariosRecord) =>
                              horariosRecord.where('uid_ref',
                                  isEqualTo: currentUserReference),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitRing(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<HorariosRecord> comidaBDHorariosRecordList =
                              snapshot.data!;
                          final comidaBDHorariosRecord =
                              comidaBDHorariosRecordList.isNotEmpty
                                  ? comidaBDHorariosRecordList.first
                                  : null;
                          return Text(
                            comidaBDHorariosRecord!.comida!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                    ),
                          );
                        },
                      ),
                    if (dateTimeFormat('Hm', datePicked2) != null &&
                        dateTimeFormat('Hm', datePicked2) != '')
                      Text(
                        dateTimeFormat('Hm', datePicked2),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                      ),
                    FFButtonWidget(
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
                      },
                      text: 'Comida',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (dateTimeFormat('Hm', datePicked3) == null ||
                        dateTimeFormat('Hm', datePicked3) == '')
                      StreamBuilder<List<HorariosRecord>>(
                        stream: queryHorariosRecord(
                          queryBuilder: (horariosRecord) =>
                              horariosRecord.where('uid_ref',
                                  isEqualTo: currentUserReference),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitRing(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<HorariosRecord> cenaBDHorariosRecordList =
                              snapshot.data!;
                          final cenaBDHorariosRecord =
                              cenaBDHorariosRecordList.isNotEmpty
                                  ? cenaBDHorariosRecordList.first
                                  : null;
                          return Text(
                            cenaBDHorariosRecord!.cena!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                    ),
                          );
                        },
                      ),
                    if (dateTimeFormat('Hm', datePicked3) != null &&
                        dateTimeFormat('Hm', datePicked3) != '')
                      Text(
                        dateTimeFormat('Hm', datePicked3),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                      ),
                    FFButtonWidget(
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
                      },
                      text: 'Cena',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pop();
                              },
                              text: 'Cancelar',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            StreamBuilder<List<HorariosRecord>>(
                              stream: queryHorariosRecord(
                                queryBuilder: (horariosRecord) =>
                                    horariosRecord.where('uid_ref',
                                        isEqualTo: currentUserReference),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitRing(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<HorariosRecord> aceptarHorariosRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final aceptarHorariosRecord =
                                    aceptarHorariosRecordList.isNotEmpty
                                        ? aceptarHorariosRecordList.first
                                        : null;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    if (dateTimeFormat('Hm', datePicked1) !=
                                            null &&
                                        dateTimeFormat('Hm', datePicked1) !=
                                            '') {
                                      if (dateTimeFormat('Hm', datePicked2) !=
                                              null &&
                                          dateTimeFormat('Hm', datePicked2) !=
                                              '') {
                                        if (dateTimeFormat('Hm', datePicked3) !=
                                                null &&
                                            dateTimeFormat('Hm', datePicked3) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                                'Hm', datePicked1),
                                            comida: dateTimeFormat(
                                                'Hm', datePicked2),
                                            cena: dateTimeFormat(
                                                'Hm', datePicked3),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);

                                          context.pushNamed('Home');

                                          return;
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                                'Hm', datePicked1),
                                            comida: dateTimeFormat(
                                                'Hm', datePicked2),
                                            cena: aceptarHorariosRecord!.cena,
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);

                                          context.pushNamed('Home');

                                          return;
                                        }
                                      } else {
                                        if (dateTimeFormat('Hm', datePicked3) !=
                                                null &&
                                            dateTimeFormat('Hm', datePicked3) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                                'Hm', datePicked1),
                                            comida:
                                                aceptarHorariosRecord!.comida,
                                            cena: dateTimeFormat(
                                                'Hm', datePicked3),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                                'Hm', datePicked1),
                                            comida:
                                                aceptarHorariosRecord!.comida,
                                            cena: aceptarHorariosRecord!.cena,
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        }

                                        context.pushNamed('Home');

                                        return;
                                      }
                                    } else {
                                      if (dateTimeFormat('Hm', datePicked2) !=
                                              null &&
                                          dateTimeFormat('Hm', datePicked2) !=
                                              '') {
                                        if (dateTimeFormat('Hm', datePicked3) !=
                                                null &&
                                            dateTimeFormat('Hm', datePicked3) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida: dateTimeFormat(
                                                'Hm', datePicked2),
                                            cena: dateTimeFormat(
                                                'Hm', datePicked3),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida: dateTimeFormat(
                                                'Hm', datePicked2),
                                            cena: aceptarHorariosRecord!.cena,
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        }

                                        context.pushNamed('Home');

                                        return;
                                      } else {
                                        if (dateTimeFormat('Hm', datePicked3) !=
                                                null &&
                                            dateTimeFormat('Hm', datePicked3) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida:
                                                aceptarHorariosRecord!.comida,
                                            cena: dateTimeFormat(
                                                'Hm', datePicked3),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        } else {
                                          context.pushNamed('Home');

                                          return;
                                        }

                                        context.pushNamed('Home');

                                        return;
                                      }
                                    }
                                  },
                                  text: 'Aceptar',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).animated([animationsMap['columnOnPageLoadAnimation']!]),
        ),
      ),
    );
  }
}
