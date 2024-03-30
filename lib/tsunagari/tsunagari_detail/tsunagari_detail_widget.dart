import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'tsunagari_detail_model.dart';
export 'tsunagari_detail_model.dart';

class TsunagariDetailWidget extends StatefulWidget {
  const TsunagariDetailWidget({
    super.key,
    required this.tsunagariDocRef,
  });

  final DocumentReference? tsunagariDocRef;

  @override
  State<TsunagariDetailWidget> createState() => _TsunagariDetailWidgetState();
}

class _TsunagariDetailWidgetState extends State<TsunagariDetailWidget> {
  late TsunagariDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TsunagariDetailModel());

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 500.0,
            ),
            decoration: const BoxDecoration(),
            child: StreamBuilder<TsunagarisRecord>(
              stream: TsunagarisRecord.getDocument(widget.tsunagariDocRef!),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 18.0,
                      height: 18.0,
                      child: SpinKitCircle(
                        color: FlutterFlowTheme.of(context).primary,
                        size: 18.0,
                      ),
                    ),
                  );
                }
                final stackTsunagarisRecord = snapshot.data!;
                return Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 1016.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            stackTsunagarisRecord.backImage,
                          ).image,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  32.0, 400.0, 32.0, 24.0),
                              child: Container(
                                width: 326.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              stackTsunagarisRecord.nickName,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Rounded Mgen plus 2cp',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            Text(
                                              stackTsunagarisRecord.name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (stackTsunagarisRecord
                                                    .deathAnniversary !=
                                                null)
                                              Text(
                                                dateTimeFormat(
                                                  'yyyy年MM月dd日没',
                                                  stackTsunagarisRecord
                                                      .deathAnniversary!,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            if (stackTsunagarisRecord
                                                    .birthDate !=
                                                null)
                                              Text(
                                                '（${functions.returnAge(stackTsunagarisRecord.birthDate, stackTsunagarisRecord.deathAnniversary!).toString()}歳）',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: StreamBuilder<
                                            List<PurchasesRecord>>(
                                          stream: queryPurchasesRecord(
                                            queryBuilder: (purchasesRecord) =>
                                                purchasesRecord
                                                    .where(
                                                      'target_tsunagari',
                                                      isEqualTo: widget
                                                          .tsunagariDocRef,
                                                    )
                                                    .whereIn(
                                                        'service_status',
                                                        ExecuteStatus.values
                                                            .take(4)
                                                            .toList()
                                                            .map((e) =>
                                                                e.serialize())
                                                            .toList())
                                                    .orderBy('target_month'),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 18.0,
                                                  height: 18.0,
                                                  child: SpinKitCircle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<PurchasesRecord>
                                                nextGraveVisitPurchasesRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final nextGraveVisitPurchasesRecord =
                                                nextGraveVisitPurchasesRecordList
                                                        .isNotEmpty
                                                    ? nextGraveVisitPurchasesRecordList
                                                        .first
                                                    : null;
                                            return Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0x26FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      flex: 6,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '次のお参り',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.485,
                                                                ),
                                                          ),
                                                          Text(
                                                            dateTimeFormat(
                                                              'M月',
                                                              nextGraveVisitPurchasesRecord!
                                                                  .targetMonth!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.485,
                                                                ),
                                                          ),
                                                          Container(
                                                            width: 91.0,
                                                            height: 26.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFFFBE0BB),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1000.0),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                'マッチング中',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Rounded Mgen plus 2cp',
                                                                      color: const Color(
                                                                          0xFFD57B00),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.485,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 6,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'お参り内容',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.485,
                                                                ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                nextGraveVisitPurchasesRecord
                                                                        .isUseOption
                                                                    ? 'お花とお掃除'
                                                                    : 'お花のみ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Rounded Mgen plus 2cp',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.485,
                                                                    ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  () {
                                                                    if (stackTsunagarisRecord
                                                                            .plan ==
                                                                        Plan
                                                                            .plan1) {
                                                                      return 'プラン1';
                                                                    } else if (stackTsunagarisRecord
                                                                            .plan ==
                                                                        Plan
                                                                            .plan2) {
                                                                      return 'プラン2';
                                                                    } else if (stackTsunagarisRecord
                                                                            .plan ==
                                                                        Plan.plan3) {
                                                                      return 'プラン3';
                                                                    } else {
                                                                      return stackTsunagarisRecord
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
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.485,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(
                                                          const SizedBox(width: 16.0))
                                                      .addToStart(
                                                          const SizedBox(width: 20.0))
                                                      .addToEnd(const SizedBox(
                                                          width: 20.0)),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 10.0,
                                              sigmaY: 10.0,
                                            ),
                                            child: Container(
                                              width: 326.0,
                                              height: 56.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x26FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 16.0, 20.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      FFIcons.k24Flower2,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    Flexible(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '供養プラン管理',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Text(
                                                            () {
                                                              if (stackTsunagarisRecord
                                                                      .plan ==
                                                                  Plan.plan1) {
                                                                return 'プラン1';
                                                              } else if (stackTsunagarisRecord
                                                                      .plan ==
                                                                  Plan.plan2) {
                                                                return 'プラン2';
                                                              } else if (stackTsunagarisRecord
                                                                      .plan ==
                                                                  Plan.plan3) {
                                                                return 'プラン3';
                                                              } else {
                                                                return '未設定';
                                                              }
                                                            }(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 10.0,
                                              sigmaY: 10.0,
                                            ),
                                            child: Container(
                                              width: 326.0,
                                              height: 56.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x26FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 16.0, 20.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      FFIcons.k24Time,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    Flexible(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '供養履歴',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Text(
                                                            '一番最近：2024年1月',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 10.0,
                                              sigmaY: 10.0,
                                            ),
                                            child: Container(
                                              width: 326.0,
                                              height: 56.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x26FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 16.0, 20.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      FFIcons.k24Time,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    Text(
                                                      '手を合わせる',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Rounded Mgen plus 2cp',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 10.0,
                                              sigmaY: 10.0,
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'TsunagariEdit',
                                                  queryParameters: {
                                                    'tsunagariDocRef':
                                                        serializeParam(
                                                      widget.tsunagariDocRef,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Container(
                                                width: 326.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0x26FFFFFF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 16.0,
                                                          20.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        FFIcons.k24Edit,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      Text(
                                                        'ツナガリ・お墓情報編集',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 10.0,
                                              sigmaY: 10.0,
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                var shouldSetState = false;
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'ツナガリの情報を削除しますか？'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: const Text(
                                                                      'キャンセル'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: const Text(
                                                                      '削除する'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  await currentUserReference!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'tsunagaris': FieldValue
                                                            .arrayRemove([
                                                          widget.tsunagariDocRef
                                                        ]),
                                                      },
                                                    ),
                                                  });

                                                  await stackTsunagarisRecord
                                                      .locationRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'tsunagaris': FieldValue
                                                            .arrayRemove([
                                                          stackTsunagarisRecord
                                                              .reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  _model.locationDoc =
                                                      await LocationsRecord
                                                          .getDocumentOnce(
                                                              stackTsunagarisRecord
                                                                  .locationRef!);
                                                  shouldSetState = true;

                                                  await stackTsunagarisRecord
                                                      .graveRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'tsunagari_location_relations':
                                                            FieldValue
                                                                .arrayRemove([
                                                          getTsunagariLocationFirestoreData(
                                                            updateTsunagariLocationStruct(
                                                              TsunagariLocationStruct(
                                                                tsunagari:
                                                                    stackTsunagarisRecord
                                                                        .name,
                                                                location: _model
                                                                    .locationDoc
                                                                    ?.name,
                                                                plan:
                                                                    stackTsunagarisRecord
                                                                        .plan,
                                                              ),
                                                              clearUnsetFields:
                                                                  false,
                                                            ),
                                                            true,
                                                          )
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  await widget.tsunagariDocRef!
                                                      .delete();

                                                  context
                                                      .goNamed('TsunagariList');
                                                } else {
                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                  return;
                                                }

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 326.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0x26FFFFFF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 16.0,
                                                          20.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        FFIcons.k24Trash,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                      Text(
                                                        'ツナガリ削除',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rounded Mgen plus 2cp',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ].divide(const SizedBox(height: 32.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0.0, 0.0),
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 50.0,
                            sigmaY: 50.0,
                          ),
                          child: FlutterFlowIconButton(
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0x26FFFFFF),
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
