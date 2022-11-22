import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimacionAlimentarWidget extends StatefulWidget {
  const AnimacionAlimentarWidget({Key? key}) : super(key: key);

  @override
  _AnimacionAlimentarWidgetState createState() =>
      _AnimacionAlimentarWidgetState();
}

class _AnimacionAlimentarWidgetState extends State<AnimacionAlimentarWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsuarioMascotaRecord>>(
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
        List<UsuarioMascotaRecord> stackUsuarioMascotaRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final stackUsuarioMascotaRecord =
            stackUsuarioMascotaRecordList.isNotEmpty
                ? stackUsuarioMascotaRecordList.first
                : null;
        return Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: FutureBuilder<List<MascotasRecord>>(
                future: queryMascotasRecordOnce(
                  queryBuilder: (mascotasRecord) => mascotasRecord.where(
                      'nombre_mascota',
                      isEqualTo: stackUsuarioMascotaRecord!.nombreMascota),
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
                  List<MascotasRecord> imageMascotasRecordList = snapshot.data!;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final imageMascotasRecord = imageMascotasRecordList.isNotEmpty
                      ? imageMascotasRecordList.first
                      : null;
                  return CachedNetworkImage(
                    imageUrl: imageMascotasRecord!.imagenMascota!,
                    width: 220,
                    height: 220,
                    fit: BoxFit.fitHeight,
                  );
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.03, 0.67),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Gracias por alimentarnos',
                icon: Icon(
                  Icons.favorite,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 250,
                  height: 80,
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
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.35),
              child: Image.asset(
                'assets/images/hearts.gif',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ],
        );
      },
    );
  }
}
