import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactoEmergenciaWidget extends StatefulWidget {
  const ContactoEmergenciaWidget({Key? key}) : super(key: key);

  @override
  _ContactoEmergenciaWidgetState createState() =>
      _ContactoEmergenciaWidgetState();
}

class _ContactoEmergenciaWidgetState extends State<ContactoEmergenciaWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
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
          'Contacto',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      'Nos las arreglamos con un poco de ayuda de nuestros familiares o amigos.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).title3Family,
                            color: FlutterFlowTheme.of(context).alternate,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title3Family),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Diseo_sin_ttulo_(7).png',
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 30, 40, 0),
                child: Text(
                  'Ingrese el número de teléfono de un amigo cercano o familiar que pueda ser  de ayuda para que puedas comunicarte fácilmente si lo necesitas. \nÉsta información es solo para tu uso y nunca será compartida con nadie.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).subtitle2Family,
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).subtitle2Family),
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: StreamBuilder<List<UsuariosConfianzaRecord>>(
                  stream: queryUsuariosConfianzaRecord(
                    queryBuilder: (usuariosConfianzaRecord) =>
                        usuariosConfianzaRecord.where('uidref',
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<UsuariosConfianzaRecord>
                        textFieldUsuariosConfianzaRecordList = snapshot.data!;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final textFieldUsuariosConfianzaRecord =
                        textFieldUsuariosConfianzaRecordList.isNotEmpty
                            ? textFieldUsuariosConfianzaRecordList.first
                            : null;
                    return Container(
                      width: 250,
                      child: TextFormField(
                        controller: textController1 ??= TextEditingController(
                          text:
                              textFieldUsuariosConfianzaRecord!.nombreContacto,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Nombre de contacto',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF96BEFF),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF96BEFF),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          prefixIcon: Icon(
                            Icons.person_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Color(0xFF96BEFF),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: StreamBuilder<List<UsuariosConfianzaRecord>>(
                  stream: queryUsuariosConfianzaRecord(
                    queryBuilder: (usuariosConfianzaRecord) =>
                        usuariosConfianzaRecord.where('uidref',
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<UsuariosConfianzaRecord>
                        textFieldUsuariosConfianzaRecordList = snapshot.data!;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final textFieldUsuariosConfianzaRecord =
                        textFieldUsuariosConfianzaRecordList.isNotEmpty
                            ? textFieldUsuariosConfianzaRecordList.first
                            : null;
                    return Container(
                      width: 250,
                      child: TextFormField(
                        controller: textController2 ??= TextEditingController(
                          text:
                              textFieldUsuariosConfianzaRecord!.numeroContacto,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Número de contacto',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          prefixIcon: Icon(
                            Icons.local_phone_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        keyboardType: TextInputType.number,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: StreamBuilder<List<UsuariosConfianzaRecord>>(
              stream: queryUsuariosConfianzaRecord(
                queryBuilder: (usuariosConfianzaRecord) =>
                    usuariosConfianzaRecord.where('uidref',
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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<UsuariosConfianzaRecord>
                    buttonLoginUsuariosConfianzaRecordList = snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final buttonLoginUsuariosConfianzaRecord =
                    buttonLoginUsuariosConfianzaRecordList.isNotEmpty
                        ? buttonLoginUsuariosConfianzaRecordList.first
                        : null;
                return FFButtonWidget(
                  onPressed: () async {
                    final usuariosConfianzaUpdateData =
                        createUsuariosConfianzaRecordData(
                      nombreContacto: textController1?.text ?? '',
                      numeroContacto: textController2?.text ?? '',
                    );
                    await buttonLoginUsuariosConfianzaRecord!.reference
                        .update(usuariosConfianzaUpdateData);
                  },
                  text: 'Guardar',
                  options: FFButtonOptions(
                    width: 180,
                    height: 56,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).darkBtnText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                    elevation: 1,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      width: 1,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
