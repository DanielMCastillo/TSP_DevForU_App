import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/botones_h_s_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 30),
          end: Offset(0, 0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(49, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'botonesHSOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 190.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 190.ms,
          duration: 600.ms,
          begin: 0.195,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 190.ms,
          duration: 600.ms,
          begin: Offset(0, 49),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  AudioPlayer? soundPlayer;
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
              child: Text(
                'Casa de ',
                style: FlutterFlowTheme.of(context).title2,
              ),
            ),
            StreamBuilder<List<UsuarioMascotaRecord>>(
              stream: queryUsuarioMascotaRecord(
                queryBuilder: (usuarioMascotaRecord) => usuarioMascotaRecord
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsuarioMascotaRecord> textUsuarioMascotaRecordList =
                    snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final textUsuarioMascotaRecord =
                    textUsuarioMascotaRecordList.isNotEmpty
                        ? textUsuarioMascotaRecordList.first
                        : null;
                return Text(
                  textUsuarioMascotaRecord!.nombreMascota!,
                  style: FlutterFlowTheme.of(context).title2,
                );
              },
            ),
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
            child: StreamBuilder<List<UsuarioMascotaRecord>>(
              stream: queryUsuarioMascotaRecord(
                queryBuilder: (usuarioMascotaRecord) => usuarioMascotaRecord
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsuarioMascotaRecord> columnUsuarioMascotaRecordList =
                    snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnUsuarioMascotaRecord =
                    columnUsuarioMascotaRecordList.isNotEmpty
                        ? columnUsuarioMascotaRecordList.first
                        : null;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  functions.getRandomMessage(List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) => random_data.randomString(
                                            0,
                                            0,
                                            false,
                                            false,
                                            false,
                                          )).toList()),
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/Minimal-Background-HD-Wallpaper-049.jpg',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          height: 300,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.01, 0.06),
                                child: FutureBuilder<List<MascotasRecord>>(
                                  future: queryMascotasRecordOnce(
                                    queryBuilder: (mascotasRecord) =>
                                        mascotasRecord.where('nombre_mascota',
                                            isEqualTo:
                                                columnUsuarioMascotaRecord!
                                                    .nombreMascota),
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
                                    List<MascotasRecord>
                                        imageMascotasRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final imageMascotasRecord =
                                        imageMascotasRecordList.isNotEmpty
                                            ? imageMascotasRecordList.first
                                            : null;
                                    return InkWell(
                                      onLongPress: () async {
                                        soundPlayer ??= AudioPlayer();
                                        if (soundPlayer!.playing) {
                                          await soundPlayer!.stop();
                                        }
                                        soundPlayer!.setVolume(0.85);
                                        await soundPlayer!
                                            .setAsset(
                                                'assets/audios/y2mate.com_-_Love_alarm_20_tono.mp3')
                                            .then((_) => soundPlayer!.play());

                                        HapticFeedback.vibrate();
                                      },
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            imageMascotasRecord!.imagenMascota!,
                                        width: 400,
                                        height: 300,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation']!);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ).animateOnPageLoad(
                            animationsMap['stackOnPageLoadAnimation']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: BotonesHSWidget().animateOnPageLoad(
                            animationsMap['botonesHSOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
