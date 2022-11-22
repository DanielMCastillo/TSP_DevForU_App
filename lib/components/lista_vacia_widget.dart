import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListaVaciaWidget extends StatefulWidget {
  const ListaVaciaWidget({Key? key}) : super(key: key);

  @override
  _ListaVaciaWidgetState createState() => _ListaVaciaWidgetState();
}

class _ListaVaciaWidgetState extends State<ListaVaciaWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.listAlt,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 90,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Text(
                      'Parece que no tienes nada registrado',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).title3Family,
                            color: FlutterFlowTheme.of(context).primaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title3Family),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
