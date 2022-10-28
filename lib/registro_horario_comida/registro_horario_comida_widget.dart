import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
                  transitionType: PageTransitionType.rightToLeft,
                ),
              },
            );
          },
        ),
        title: Text(
          'Mis horarios',
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
                    StreamBuilder<List<HorariosRecord>>(
                      stream: queryHorariosRecord(
                        queryBuilder: (horariosRecord) => horariosRecord
                            .where('uid_ref', isEqualTo: currentUserReference),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
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
                          dateTimeFormat(
                            'Hm',
                            datePicked1,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
                        );
                      },
                    ),
                    StreamBuilder<List<HorariosUsuarioRecord>>(
                      stream: queryHorariosUsuarioRecord(
                        queryBuilder: (horariosUsuarioRecord) =>
                            horariosUsuarioRecord.where('uidref',
                                isEqualTo: currentUserReference),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<HorariosUsuarioRecord>
                            desayunoHorariosUsuarioRecordList = snapshot.data!;
                        final desayunoHorariosUsuarioRecord =
                            desayunoHorariosUsuarioRecordList.isNotEmpty
                                ? desayunoHorariosUsuarioRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            await DatePicker.showTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked1 = date);
                              },
                              currentTime:
                                  desayunoHorariosUsuarioRecord!.desayuno!,
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
                            height: 56,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                            elevation: 1,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      dateTimeFormat(
                        'Hm',
                        datePicked2,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    StreamBuilder<List<HorariosUsuarioRecord>>(
                      stream: queryHorariosUsuarioRecord(
                        queryBuilder: (horariosUsuarioRecord) =>
                            horariosUsuarioRecord.where('uidref',
                                isEqualTo: currentUserReference),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<HorariosUsuarioRecord>
                            comidaHorariosUsuarioRecordList = snapshot.data!;
                        final comidaHorariosUsuarioRecord =
                            comidaHorariosUsuarioRecordList.isNotEmpty
                                ? comidaHorariosUsuarioRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            await DatePicker.showTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked2 = date);
                              },
                              currentTime: comidaHorariosUsuarioRecord!.comida!,
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
                            height: 56,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      dateTimeFormat(
                        'Hm',
                        datePicked3,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    StreamBuilder<List<HorariosUsuarioRecord>>(
                      stream: queryHorariosUsuarioRecord(
                        queryBuilder: (horariosUsuarioRecord) =>
                            horariosUsuarioRecord.where('uidref',
                                isEqualTo: currentUserReference),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<HorariosUsuarioRecord>
                            cenaHorariosUsuarioRecordList = snapshot.data!;
                        final cenaHorariosUsuarioRecord =
                            cenaHorariosUsuarioRecordList.isNotEmpty
                                ? cenaHorariosUsuarioRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            await DatePicker.showTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked3 = date);
                              },
                              currentTime: cenaHorariosUsuarioRecord!.cena!,
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
                            height: 56,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        );
                      },
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
                              text: 'Cancelar',
                              options: FFButtonOptions(
                                width: 130,
                                height: 56,
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .subtitle1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .darkBtnText,
                                      fontWeight: FontWeight.w500,
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
                            StreamBuilder<List<HorariosUsuarioRecord>>(
                              stream: queryHorariosUsuarioRecord(
                                queryBuilder: (horariosUsuarioRecord) =>
                                    horariosUsuarioRecord.where('uidref',
                                        isEqualTo: currentUserReference),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<HorariosUsuarioRecord>
                                    aceptarHorariosUsuarioRecordList =
                                    snapshot.data!;
                                final aceptarHorariosUsuarioRecord =
                                    aceptarHorariosUsuarioRecordList.isNotEmpty
                                        ? aceptarHorariosUsuarioRecordList.first
                                        : null;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    final horariosUsuarioUpdateData =
                                        createHorariosUsuarioRecordData(
                                      desayuno: datePicked1,
                                      comida: datePicked2,
                                      cena: datePicked3,
                                    );
                                    await aceptarHorariosUsuarioRecord!
                                        .reference
                                        .update(horariosUsuarioUpdateData);

                                    context.goNamed('Home');

                                    await actions.awesomeNotification(
                                      1,
                                      'Desayuno',
                                      '¡Hora de desayunar!',
                                      2,
                                      'Comida',
                                      '¡Hora de comer!',
                                      3,
                                      'Cena',
                                      '¡Hora de cenar!',
                                      functions.obtenerHora(
                                          aceptarHorariosUsuarioRecord!
                                              .desayuno!),
                                      functions.obtenerMinutos(
                                          aceptarHorariosUsuarioRecord!
                                              .desayuno!),
                                      functions.obtenerHora(
                                          aceptarHorariosUsuarioRecord!
                                              .comida!),
                                      functions.obtenerMinutos(
                                          aceptarHorariosUsuarioRecord!
                                              .comida!),
                                      functions.obtenerHora(
                                          aceptarHorariosUsuarioRecord!.cena!),
                                      functions.obtenerMinutos(
                                          aceptarHorariosUsuarioRecord!.cena!),
                                      true,
                                      true,
                                      true,
                                    );
                                  },
                                  text: 'Aceptar',
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
