import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RegistrosWidget extends StatefulWidget {
  const RegistrosWidget({Key? key}) : super(key: key);

  @override
  _RegistrosWidgetState createState() => _RegistrosWidgetState();
}

class _RegistrosWidgetState extends State<RegistrosWidget>
    with TickerProviderStateMixin {
  PagingController<DocumentSnapshot?, NotasRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 31),
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
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
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
          'Mis registros',
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.01),
                      child: PagedListView<DocumentSnapshot<Object?>?,
                          NotasRecord>(
                        pagingController: () {
                          final Query<Object?> Function(Query<Object?>)
                              queryBuilder = (notasRecord) => notasRecord
                                  .where('uid_ref',
                                      isEqualTo: currentUserReference)
                                  .orderBy('fecha_redac');
                          if (_pagingController != null) {
                            final query = queryBuilder(NotasRecord.collection);
                            if (query != _pagingQuery) {
                              // The query has changed
                              _pagingQuery = query;
                              _streamSubscriptions.forEach((s) => s?.cancel());
                              _streamSubscriptions.clear();
                              _pagingController!.refresh();
                            }
                            return _pagingController!;
                          }

                          _pagingController =
                              PagingController(firstPageKey: null);
                          _pagingQuery = queryBuilder(NotasRecord.collection);
                          _pagingController!
                              .addPageRequestListener((nextPageMarker) {
                            queryNotasRecordPage(
                              queryBuilder: (notasRecord) => notasRecord
                                  .where('uid_ref',
                                      isEqualTo: currentUserReference)
                                  .orderBy('fecha_redac'),
                              nextPageMarker: nextPageMarker,
                              pageSize: 8,
                              isStream: true,
                            ).then((page) {
                              _pagingController!.appendPage(
                                page.data,
                                page.nextPageMarker,
                              );
                              final streamSubscription =
                                  page.dataStream?.listen((data) {
                                final itemIndexes = _pagingController!.itemList!
                                    .asMap()
                                    .map((k, v) => MapEntry(v.reference.id, k));
                                data.forEach((item) {
                                  final index = itemIndexes[item.reference.id];
                                  final items = _pagingController!.itemList!;
                                  if (index != null) {
                                    items
                                        .replaceRange(index, index + 1, [item]);
                                    _pagingController!.itemList = {
                                      for (var item in items)
                                        item.reference: item
                                    }.values.toList();
                                  }
                                });
                                setState(() {});
                              });
                              _streamSubscriptions.add(streamSubscription);
                            });
                          });
                          return _pagingController!;
                        }(),
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        builderDelegate: PagedChildBuilderDelegate<NotasRecord>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitRing(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          ),

                          itemBuilder: (context, _, listViewIndex) {
                            final listViewNotasRecord =
                                _pagingController!.itemList![listViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: StreamBuilder<List<EstadoAnimoRecord>>(
                                stream: queryEstadoAnimoRecord(
                                  queryBuilder: (estadoAnimoRecord) =>
                                      estadoAnimoRecord.where('id_estadoanimo',
                                          isEqualTo: listViewNotasRecord
                                              .idEstadoAnimo),
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRing(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<EstadoAnimoRecord>
                                      containerEstadoAnimoRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the document does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final containerEstadoAnimoRecord =
                                      containerEstadoAnimoRecordList.isNotEmpty
                                          ? containerEstadoAnimoRecordList.first
                                          : null;
                                  return Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x20000000),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  containerEstadoAnimoRecord!
                                                      .imagenEstado!,
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 0, 0, 0),
                                                    child: Text(
                                                      containerEstadoAnimoRecord!
                                                          .estado!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 0, 0, 0),
                                                    child: Text(
                                                      dateTimeFormat(
                                                          'yMMMd',
                                                          listViewNotasRecord
                                                              .fechaRedac!),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 4, 0, 0),
                                                    child: Text(
                                                      listViewNotasRecord.nota!,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
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
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ).animated(
                          [animationsMap['listViewOnPageLoadAnimation']!]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
