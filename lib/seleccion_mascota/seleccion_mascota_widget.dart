import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SeleccionMascotaWidget extends StatefulWidget {
  const SeleccionMascotaWidget({Key? key}) : super(key: key);

  @override
  _SeleccionMascotaWidgetState createState() => _SeleccionMascotaWidgetState();
}

class _SeleccionMascotaWidgetState extends State<SeleccionMascotaWidget> {
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
  bool? checkboxListTileValue8;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 1,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 100),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/AJOLOTE.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue1 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue1 = newValue!),
                                        title: Text(
                                          'Devi',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Ajolote',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Jali.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue2 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue2 = newValue!),
                                        title: Text(
                                          'Jali',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Zorro',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Sonam.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue3 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue3 = newValue!),
                                        title: Text(
                                          'Sonam',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Gato',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Raluca.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue4 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue4 = newValue!),
                                        title: Text(
                                          'Raluca',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Perro',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Nosek.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue5 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue5 = newValue!),
                                        title: Text(
                                          'Nosek',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Dragón',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Bobi.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue6 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue6 = newValue!),
                                        title: Text(
                                          'Bobi',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Oso panda',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Chork.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue7 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue7 = newValue!),
                                        title: Text(
                                          'Chork',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Conejo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Container(
                            width: 100,
                            height: 130,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/Mae.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue8 ??= false,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue8 = newValue!),
                                        title: Text(
                                          'Mae',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 22,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Unicornio',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontSize: 18,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 8, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Listo',
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
