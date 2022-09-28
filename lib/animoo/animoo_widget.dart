import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimooWidget extends StatefulWidget {
  const AnimooWidget({Key? key}) : super(key: key);

  @override
  _AnimooWidgetState createState() => _AnimooWidgetState();
}

class _AnimooWidgetState extends State<AnimooWidget>
    with TickerProviderStateMixin {
  TextEditingController? textController;
  int? countControllerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 66),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 58),
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

    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
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
            context.pushNamed('Home');
          },
        ),
        title: Text(
          'Escribe tu nota',
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
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1.01),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 50, 0, 100),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Text(
                                    '¿Cómo te sientes ahora?',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 25, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/images/MuyTriste.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/Triste.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/Regular.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/Feliz.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/MuyFeliz.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          45, 0, 0, 0),
                                      child: Text(
                                        '1',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          63, 0, 0, 0),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          60, 0, 0, 0),
                                      child: Text(
                                        '3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          58, 0, 0, 0),
                                      child: Text(
                                        '4',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          59, 0, 0, 0),
                                      child: Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: 160,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color(0xFF9E9E9E),
                                        width: 1,
                                      ),
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.minus,
                                        color: enabled
                                            ? Color(0xDD000000)
                                            : Color(0xFFEEEEEE),
                                        size: 20,
                                      ),
                                      incrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.plus,
                                        color: enabled
                                            ? Colors.blue
                                            : Color(0xFFEEEEEE),
                                        size: 20,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      count: countControllerValue ??= 1,
                                      updateCount: (count) => setState(
                                          () => countControllerValue = count),
                                      stepSize: 1,
                                      minimum: 1,
                                      maximum: 5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 20, 12, 0),
                                  child: Container(
                                    width: 400,
                                    child: TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Escribe una nota',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .grayIcon,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .grayIcon,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            lineHeight: 0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLines: 5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 32, 0, 32),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final notasCreateData =
                                          createNotasRecordData(
                                        uidRef: currentUserReference,
                                        fechaRedac: getCurrentTimestamp,
                                        nota: textController!.text,
                                        idEstadoAnimo: countControllerValue,
                                      );
                                      await NotasRecord.collection
                                          .doc()
                                          .set(notasCreateData);

                                      context
                                          .pushNamed('PantallaDeFelicitacion');
                                    },
                                    text: 'Guardar',
                                    options: FFButtonOptions(
                                      width: 300,
                                      height: 50,
                                      color: Color(0xFF96BEFF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animated(
                              [animationsMap['columnOnPageLoadAnimation']!]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(110, 50, 110, 0),
                      child: Text(
                        valueOrDefault<String>(
                          dateTimeFormat('d/M/y', getCurrentTimestamp),
                          '20/Septiembre/2022',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 25,
                            ),
                      ),
                    ),
                  ),
                ],
              ).animated([animationsMap['rowOnPageLoadAnimation']!]),
            ],
          ),
        ),
      ),
    );
  }
}
