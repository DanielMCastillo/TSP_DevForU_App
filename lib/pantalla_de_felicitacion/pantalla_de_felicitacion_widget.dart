import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaDeFelicitacionWidget extends StatefulWidget {
  const PantallaDeFelicitacionWidget({Key? key}) : super(key: key);

  @override
  _PantallaDeFelicitacionWidgetState createState() =>
      _PantallaDeFelicitacionWidgetState();
}

class _PantallaDeFelicitacionWidgetState
    extends State<PantallaDeFelicitacionWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 780,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(46, 0),
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
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: Color(0xFF96BEFF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/AJOLOTE.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ).animated([animationsMap['imageOnPageLoadAnimation']!]),
                  ],
                ),
              ),
              Text(
                '¡Gracias por compartirmelo!',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Text(
                  '¡Yo sé que puedes!',
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'Home',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                        ),
                      },
                    );
                  },
                  text: 'Seguir',
                  options: FFButtonOptions(
                    width: 130,
                    height: 50,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).alternate,
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
        ),
      ),
    );
  }
}
