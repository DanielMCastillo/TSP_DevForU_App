import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AfkxdWidget extends StatefulWidget {
  const AfkxdWidget({Key? key}) : super(key: key);

  @override
  _AfkxdWidgetState createState() => _AfkxdWidgetState();
}

class _AfkxdWidgetState extends State<AfkxdWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'tfweh2pr' /* AFK */,
          ),
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 22,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText2Family),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 1,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json',
            width: 150,
            height: 130,
            fit: BoxFit.cover,
            animate: true,
          ),
        ),
      ),
    );
  }
}
