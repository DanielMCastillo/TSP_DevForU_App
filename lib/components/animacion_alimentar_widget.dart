import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
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
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Image.asset(
            'assets/images/DeviiTaco.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.03, 0.67),
          child: FFButtonWidget(
            onPressed: () async {
              Navigator.pop(context);
            },
            text: 'Gracias',
            icon: Icon(
              Icons.favorite,
              size: 15,
            ),
            options: FFButtonOptions(
              width: 150,
              height: 56,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
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
  }
}
