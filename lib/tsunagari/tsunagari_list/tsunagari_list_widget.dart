import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'tsunagari_list_model.dart';
export 'tsunagari_list_model.dart';

class TsunagariListWidget extends StatefulWidget {
  const TsunagariListWidget({super.key});

  @override
  State<TsunagariListWidget> createState() => _TsunagariListWidgetState();
}

class _TsunagariListWidgetState extends State<TsunagariListWidget> {
  late TsunagariListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TsunagariListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 500.0,
                ),
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 342.0,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    '供養中のツナガリ${(currentUserDocument?.tsunagaris.toList() ?? []).length.toString()}人',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          fontSize: 18.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Builder(
                              builder: (context) {
                                final tsunagari = (currentUserDocument
                                            ?.tsunagaris
                                            .toList() ??
                                        [])
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(tsunagari.length,
                                      (tsunagariIndex) {
                                    final tsunagariItem =
                                        tsunagari[tsunagariIndex];
                                    return StreamBuilder<TsunagarisRecord>(
                                      stream: TsunagarisRecord.getDocument(
                                          tsunagariItem),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 18.0,
                                              height: 18.0,
                                              child: SpinKitCircle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 18.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final tsunagariContentTsunagarisRecord =
                                            snapshot.data!;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'TsunagariDetail',
                                              queryParameters: {
                                                'tsunagariDocRef':
                                                    serializeParam(
                                                  tsunagariContentTsunagarisRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Container(
                                            width: 342.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 16.0, 20.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 56.0,
                                                    height: 56.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://images.unsplash.com/photo-1510771463146-e89e6e86560e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8ZG9nfGVufDB8fHx8MTcxMDkxMjQ4MHww&ixlib=rb-4.0.3&q=80&w=1080',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StreamBuilder<
                                                              GravesRecord>(
                                                            stream: GravesRecord
                                                                .getDocument(
                                                                    tsunagariContentTsunagarisRecord
                                                                        .graveRef!),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 18.0,
                                                                    height:
                                                                        18.0,
                                                                    child:
                                                                        SpinKitCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final columnGravesRecord =
                                                                  snapshot
                                                                      .data!;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    tsunagariContentTsunagarisRecord
                                                                        .nickName,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Rounded Mgen plus 2cp',
                                                                          fontSize:
                                                                              18.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              false,
                                                                          lineHeight:
                                                                              1.485,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    columnGravesRecord
                                                                        .name,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Rounded Mgen plus 2cp',
                                                                          fontSize:
                                                                              14.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              false,
                                                                          lineHeight:
                                                                              1.485,
                                                                        ),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              3.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            FFIcons.kflowerLow,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            functions.returnMonthsString(tsunagariContentTsunagarisRecord.targetMonths.toList()),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Rounded Mgen plus 2cp',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 12.0,
                                                                                  useGoogleFonts: false,
                                                                                  lineHeight: 1.485,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              3.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            FFIcons.kclean,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            functions.returnMonthsString(tsunagariContentTsunagarisRecord.targetOptionMonths.toList()),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Rounded Mgen plus 2cp',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 12.0,
                                                                                  useGoogleFonts: false,
                                                                                  lineHeight: 1.485,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  () {
                                                                    if (tsunagariContentTsunagarisRecord
                                                                            .plan ==
                                                                        Plan
                                                                            .plan1) {
                                                                      return 'プラン1';
                                                                    } else if (tsunagariContentTsunagarisRecord
                                                                            .plan ==
                                                                        Plan
                                                                            .plan2) {
                                                                      return 'プラン2';
                                                                    } else if (tsunagariContentTsunagarisRecord
                                                                            .plan ==
                                                                        Plan.plan3) {
                                                                      return 'プラン3';
                                                                    } else {
                                                                      return tsunagariContentTsunagarisRecord
                                                                          .plan
                                                                          ?.name;
                                                                    }
                                                                  }(),
                                                                  '未設定',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Rounded Mgen plus 2cp',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.485,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),

                                                          // Enumの上から4つまでに該当し、targetMonthsの昇順でソートした際に一番先頭にある要素を取得してくる
                                                          // ※年を跨ぐ際の挙動がおかしくなるので今後改善が必要
                                                          // 例えば「202403」などで格納する必要有
                                                          StreamBuilder<
                                                              List<
                                                                  PurchasesRecord>>(
                                                            stream:
                                                                queryPurchasesRecord(
                                                              queryBuilder: (purchasesRecord) =>
                                                                  purchasesRecord
                                                                      .where(
                                                                        'target_tsunagari',
                                                                        isEqualTo:
                                                                            tsunagariContentTsunagarisRecord.reference,
                                                                      )
                                                                      .whereIn(
                                                                          'service_status',
                                                                          ExecuteStatus
                                                                              .values
                                                                              .take(
                                                                                  4)
                                                                              .toList()
                                                                              .map((e) => e
                                                                                  .serialize())
                                                                              .toList())
                                                                      .orderBy(
                                                                          'target_month'),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 18.0,
                                                                    height:
                                                                        18.0,
                                                                    child:
                                                                        SpinKitCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<PurchasesRecord>
                                                                  firstPurchaseLoaderPurchasesRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final firstPurchaseLoaderPurchasesRecord =
                                                                  firstPurchaseLoaderPurchasesRecordList
                                                                          .isNotEmpty
                                                                      ? firstPurchaseLoaderPurchasesRecordList
                                                                          .first
                                                                      : null;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  // ステータスが、searching、matchedの場合に表示される
                                                                  if ((firstPurchaseLoaderPurchasesRecord?.serviceStatus == ExecuteStatus.preSearchingExecutor) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .searchingExecutor) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .matched) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .preExecution))
                                                                    Text(
                                                                      () {
                                                                        if ((firstPurchaseLoaderPurchasesRecord?.serviceStatus == ExecuteStatus.matched) ||
                                                                            (firstPurchaseLoaderPurchasesRecord?.serviceStatus ==
                                                                                ExecuteStatus
                                                                                    .preExecution)) {
                                                                          return '次の献花予定日：${dateTimeFormat(
                                                                            'yyyy年MM月dd日',
                                                                            firstPurchaseLoaderPurchasesRecord?.serviceDate,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          )}';
                                                                        } else if ((firstPurchaseLoaderPurchasesRecord?.serviceStatus == ExecuteStatus.searchingExecutor) ||
                                                                            (firstPurchaseLoaderPurchasesRecord?.serviceStatus ==
                                                                                ExecuteStatus.preSearchingExecutor)) {
                                                                          return '次のお参り：${dateTimeFormat(
                                                                            'M月',
                                                                            firstPurchaseLoaderPurchasesRecord?.targetMonth,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          )}';
                                                                        } else {
                                                                          return '未定';
                                                                        }
                                                                      }(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Rounded Mgen plus 2cp',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                12.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                            lineHeight:
                                                                                1.485,
                                                                          ),
                                                                    ),
                                                                  if ((firstPurchaseLoaderPurchasesRecord?.serviceStatus == ExecuteStatus.preSearchingExecutor) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .searchingExecutor) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .matched) ||
                                                                      (firstPurchaseLoaderPurchasesRecord
                                                                              ?.serviceStatus ==
                                                                          ExecuteStatus
                                                                              .preExecution))
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if ((firstPurchaseLoaderPurchasesRecord?.serviceStatus == ExecuteStatus.preSearchingExecutor) ||
                                                                            (firstPurchaseLoaderPurchasesRecord?.serviceStatus ==
                                                                                ExecuteStatus.searchingExecutor)) {
                                                                          return
                                                                              // ステータスがsearchingの場合に表示される
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 91.0,
                                                                                height: 26.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0xFFFBE0BB),
                                                                                  borderRadius: BorderRadius.circular(1000.0),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'マッチング中',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Rounded Mgen plus 2cp',
                                                                                          color: const Color(0xFFD57B00),
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: false,
                                                                                          lineHeight: 1.485,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        } else {
                                                                          return
                                                                              // ステータスがsearchingの場合に表示される
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 110.0,
                                                                                height: 26.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  borderRadius: BorderRadius.circular(1000.0),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    '実行者決定済み',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Rounded Mgen plus 2cp',
                                                                                          color: FlutterFlowTheme.of(context).accent1,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: false,
                                                                                          lineHeight: 1.485,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        2.0)),
                                                              );
                                                            },
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 16.0)),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }).divide(const SizedBox(height: 12.0)),
                                );
                              },
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 12.0))
                            .addToStart(const SizedBox(height: 12.0))
                            .addToEnd(const SizedBox(height: 12.0)),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 10.0, 10.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 1000.0,
                          borderWidth: 1.0,
                          buttonSize: 48.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.add,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('TsunagariCreate');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
