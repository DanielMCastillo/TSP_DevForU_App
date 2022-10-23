import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroHorarioComidaWidget extends StatefulWidget {
  const RegistroHorarioComidaWidget({Key? key}) : super(key: key);

  @override
  _RegistroHorarioComidaWidgetState createState() =>
      _RegistroHorarioComidaWidgetState();
}

class _RegistroHorarioComidaWidgetState
    extends State<RegistroHorarioComidaWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
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
          onPressed: () async {
            context.pushNamed(
              'Perfil',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                ),
              },
            );
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'okwoyr1s' /* Mis horarios */,
          ),
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
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
                    if (dateTimeFormat(
                              'Hm',
                              datePicked1,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            null ||
                        dateTimeFormat(
                              'Hm',
                              datePicked1,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            '')
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
                                width: 30,
                                height: 30,
                                child: SpinKitPulse(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 30,
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
                            style: FlutterFlowTheme.of(context).subtitle1,
                          );
                        },
                      ),
                    if (dateTimeFormat(
                              'Hm',
                              datePicked1,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            null &&
                        dateTimeFormat(
                              'Hm',
                              datePicked1,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            '')
                      Text(
                        dateTimeFormat(
                          'Hm',
                          datePicked1,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2,
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
                      text: FFLocalizations.of(context).getText(
                        '5v1cjf7y' /* Desayuno */,
                      ),
                      options: FFButtonOptions(
                        width: 150,
                        height: 56,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                        elevation: 1,
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
                    if (dateTimeFormat(
                              'Hm',
                              datePicked2,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            null ||
                        dateTimeFormat(
                              'Hm',
                              datePicked2,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            '')
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
                                width: 30,
                                height: 30,
                                child: SpinKitPulse(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 30,
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
                            style: FlutterFlowTheme.of(context).subtitle1,
                          );
                        },
                      ),
                    if (dateTimeFormat(
                              'Hm',
                              datePicked2,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            null &&
                        dateTimeFormat(
                              'Hm',
                              datePicked2,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            '')
                      Text(
                        dateTimeFormat(
                          'Hm',
                          datePicked2,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2,
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
                      text: FFLocalizations.of(context).getText(
                        'sra7xvee' /* Comida */,
                      ),
                      options: FFButtonOptions(
                        width: 150,
                        height: 56,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
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
                    if (dateTimeFormat(
                              'Hm',
                              datePicked3,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            null ||
                        dateTimeFormat(
                              'Hm',
                              datePicked3,
                              locale: FFLocalizations.of(context).languageCode,
                            ) ==
                            '')
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
                                width: 30,
                                height: 30,
                                child: SpinKitPulse(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 30,
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
                            style: FlutterFlowTheme.of(context).subtitle1,
                          );
                        },
                      ),
                    if (dateTimeFormat(
                              'Hm',
                              datePicked3,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            null &&
                        dateTimeFormat(
                              'Hm',
                              datePicked3,
                              locale: FFLocalizations.of(context).languageCode,
                            ) !=
                            '')
                      Text(
                        dateTimeFormat(
                          'Hm',
                          datePicked3,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2,
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
                      text: FFLocalizations.of(context).getText(
                        'w82mj21t' /* Cena */,
                      ),
                      options: FFButtonOptions(
                        width: 150,
                        height: 56,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pop();
                              },
                              text: FFLocalizations.of(context).getText(
                                'h3ohzwme' /* Cancelar */,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 56,
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .subtitle1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .subtitle1Family),
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(14),
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
                                      width: 30,
                                      height: 30,
                                      child: SpinKitPulse(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 30,
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
                                    if (dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ) !=
                                            null &&
                                        dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ) !=
                                            '') {
                                      if (dateTimeFormat(
                                                'Hm',
                                                datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              null &&
                                          dateTimeFormat(
                                                'Hm',
                                                datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              '') {
                                        if (dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                null &&
                                            dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            comida: dateTimeFormat(
                                              'Hm',
                                              datePicked2,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            cena: dateTimeFormat(
                                              'Hm',
                                              datePicked3,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);

                                          context.pushNamed('Home');

                                          return;
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            comida: dateTimeFormat(
                                              'Hm',
                                              datePicked2,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            cena: aceptarHorariosRecord!.cena,
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);

                                          context.pushNamed('Home');

                                          return;
                                        }
                                      } else {
                                        if (dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                null &&
                                            dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            comida:
                                                aceptarHorariosRecord!.comida,
                                            cena: dateTimeFormat(
                                              'Hm',
                                              datePicked3,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno: dateTimeFormat(
                                              'Hm',
                                              datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
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
                                      if (dateTimeFormat(
                                                'Hm',
                                                datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              null &&
                                          dateTimeFormat(
                                                'Hm',
                                                datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              '') {
                                        if (dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                null &&
                                            dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida: dateTimeFormat(
                                              'Hm',
                                              datePicked2,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            cena: dateTimeFormat(
                                              'Hm',
                                              datePicked3,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        } else {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida: dateTimeFormat(
                                              'Hm',
                                              datePicked2,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            cena: aceptarHorariosRecord!.cena,
                                          );
                                          await aceptarHorariosRecord!.reference
                                              .update(horariosUpdateData);
                                        }

                                        context.pushNamed('Home');

                                        return;
                                      } else {
                                        if (dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                null &&
                                            dateTimeFormat(
                                                  'Hm',
                                                  datePicked3,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) !=
                                                '') {
                                          final horariosUpdateData =
                                              createHorariosRecordData(
                                            desayuno:
                                                aceptarHorariosRecord!.desayuno,
                                            comida:
                                                aceptarHorariosRecord!.comida,
                                            cena: dateTimeFormat(
                                              'Hm',
                                              datePicked3,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
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
                                  text: FFLocalizations.of(context).getText(
                                    'oji6ki5o' /* Aceptar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 56,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(14),
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
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
