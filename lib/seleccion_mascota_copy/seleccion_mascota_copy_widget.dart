import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SeleccionMascotaCopyWidget extends StatefulWidget {
  const SeleccionMascotaCopyWidget({Key? key}) : super(key: key);

  @override
  _SeleccionMascotaCopyWidgetState createState() =>
      _SeleccionMascotaCopyWidgetState();
}

class _SeleccionMascotaCopyWidgetState
    extends State<SeleccionMascotaCopyWidget> {
  Map<MascotasRecord, bool> checkboxListTileValueMap1 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap2 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap3 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap4 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap5 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap6 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems6 =>
      checkboxListTileValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap7 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems7 =>
      checkboxListTileValueMap7.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<MascotasRecord, bool> checkboxListTileValueMap8 = {};
  List<MascotasRecord> get checkboxListTileCheckedItems8 =>
      checkboxListTileValueMap8.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).lineColor,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecciona a tu acompañante',
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
            ),
            Text(
              'Te acompañará en tu progeso ',
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                  ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 12, 4),
            child: FlutterFlowIconButton(
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 44,
              fillColor: Color(0xFF759EB8),
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 24,
              ),
              onPressed: () async {
                context.pushNamed('Bienvenida');
              },
            ),
          ),
        ],
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
                    child: StreamBuilder<List<MascotasRecord>>(
                      stream: queryMascotasRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitRing(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<MascotasRecord> listViewMascotasRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewMascotasRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewMascotasRecord =
                                listViewMascotasRecordList[listViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                              child: Container(
                                width: 100,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
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
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 2, 2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.network(
                                              listViewMascotasRecord
                                                  .imagenMascota!,
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
                                            value: checkboxListTileValueMap1[
                                                    listViewMascotasRecord] ??=
                                                false,
                                            onChanged: (newValue) => setState(
                                                () => checkboxListTileValueMap1[
                                                        listViewMascotasRecord] =
                                                    newValue!),
                                            title: Text(
                                              listViewMascotasRecord
                                                  .nombreMascota!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 22,
                                                      ),
                                            ),
                                            subtitle: Text(
                                              listViewMascotasRecord
                                                  .animalMascota!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                    fontSize: 18,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
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
                            );
                          },
                        );
                      },
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
