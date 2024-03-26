import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choice_plan_component_model.dart';
export 'choice_plan_component_model.dart';

class ChoicePlanComponentWidget extends StatefulWidget {
  const ChoicePlanComponentWidget({
    super.key,
    required this.cost,
    required this.plan,
    required this.graveRef,
    required this.locationRef,
  });

  final int? cost;
  final Plan? plan;
  final DocumentReference? graveRef;
  final DocumentReference? locationRef;

  @override
  State<ChoicePlanComponentWidget> createState() =>
      _ChoicePlanComponentWidgetState();
}

class _ChoicePlanComponentWidgetState extends State<ChoicePlanComponentWidget> {
  late ChoicePlanComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoicePlanComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 440.0,
          maxHeight: MediaQuery.sizeOf(context).height * 5.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(25.0, 32.0, 25.0, 32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '選択されたプラン',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Rounded Mgen plus 2cp',
                            color: FlutterFlowTheme.of(context).accent1,
                            useGoogleFonts: false,
                          ),
                    ),
                    Container(
                      width: 342.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).accent3,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 265.0,
                              height: 48.0,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    () {
                                      if (widget.plan == Plan.plan1) {
                                        return 'プラン1';
                                      } else if (widget.plan == Plan.plan2) {
                                        return 'プラン2';
                                      } else {
                                        return 'プラン3';
                                      }
                                    }(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                          lineHeight: 1.485,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        formatNumber(
                                          widget.cost,
                                          formatType: FormatType.custom,
                                          format: '###,###',
                                          locale: '',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              useGoogleFonts: false,
                                              lineHeight: 1.485,
                                            ),
                                      ),
                                      Text(
                                        '円/回',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              useGoogleFonts: false,
                                              lineHeight: 1.485,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Text(
                                '変更',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Rounded Mgen plus 2cp',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '供養月を選択',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Rounded Mgen plus 2cp',
                            color: FlutterFlowTheme.of(context).accent1,
                            useGoogleFonts: false,
                          ),
                    ),
                    Container(
                      width: 342.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final months = functions
                              .returnSelectableMonths(getCurrentTimestamp)
                              .toList();
                          return Wrap(
                            spacing: 12.0,
                            runSpacing: 12.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children:
                                List.generate(months.length, (monthsIndex) {
                              final monthsItem = months[monthsIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  // リストに含まれていれば（Trueの場合は）削除。リストに含まれていなければ（Falseの場合は）追加する。
                                  if (_model.selectedMonths
                                      .contains(monthsItem)) {
                                    setState(() {
                                      _model
                                          .removeFromSelectedMonths(monthsItem);
                                    });
                                  } else {
                                    setState(() {
                                      _model.selectedMonths = functions
                                          .createOrderedList(
                                              _model.selectedMonths.toList(),
                                              monthsItem)
                                          .toList()
                                          .cast<DateTime>();
                                    });
                                  }
                                },
                                child: Container(
                                  width: 106.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: _model.selectedMonths
                                            .contains(monthsItem)
                                        ? FlutterFlowTheme.of(context).secondary
                                        : const Color(0x00000000),
                                    borderRadius: BorderRadius.circular(1000.0),
                                    border: Border.all(
                                      color: _model.selectedMonths
                                              .contains(monthsItem)
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : FlutterFlowTheme.of(context)
                                              .accent3,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                        'M月',
                                        monthsItem,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rounded Mgen plus 2cp',
                                            color: _model.selectedMonths
                                                    .contains(monthsItem)
                                                ? const Color(0xFF37542D)
                                                : FlutterFlowTheme.of(context)
                                                    .accent3,
                                            fontSize: 16.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24.0,
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'お墓掃除オプションをつける',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Rounded Mgen plus 2cp',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Container(
                          height: 18.0,
                          decoration: const BoxDecoration(),
                          child: Text(
                            '3,000円/回',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Rounded Mgen plus 2cp',
                                  fontSize: 12.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Builder(
                      builder: (context) {
                        final selectedOptionMonth =
                            _model.selectedMonths.toList();
                        return Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: List.generate(selectedOptionMonth.length,
                              (selectedOptionMonthIndex) {
                            final selectedOptionMonthItem =
                                selectedOptionMonth[selectedOptionMonthIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                // リストに含まれていれば（Trueの場合は）削除。リストに含まれていなければ（Falseの場合は）追加する。
                                if (_model.selectedOptionMonths
                                    .contains(selectedOptionMonthItem)) {
                                  setState(() {
                                    _model.removeFromSelectedOptionMonths(
                                        selectedOptionMonthItem);
                                  });
                                } else {
                                  setState(() {
                                    _model.addToSelectedOptionMonths(
                                        selectedOptionMonthItem);
                                  });
                                }
                              },
                              child: Container(
                                width: 167.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: _model.selectedOptionMonths
                                          .contains(selectedOptionMonthItem)
                                      ? FlutterFlowTheme.of(context).secondary
                                      : const Color(0x00000000),
                                  borderRadius: BorderRadius.circular(1000.0),
                                  border: Border.all(
                                    color: _model.selectedOptionMonths
                                            .contains(selectedOptionMonthItem)
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            'M月',
                                            selectedOptionMonthItem,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color: _model
                                                        .selectedOptionMonths
                                                        .contains(
                                                            selectedOptionMonthItem)
                                                    ? const Color(0xFF37542D)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.check,
                                        color: _model.selectedOptionMonths
                                                .contains(
                                                    selectedOptionMonthItem)
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : FlutterFlowTheme.of(context)
                                                .accent3,
                                        size: 16.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'お支払金額',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Rounded Mgen plus 2cp',
                            color: FlutterFlowTheme.of(context).accent1,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      '${formatNumber(
                        (widget.cost!) * _model.selectedMonths.length +
                            3000 * _model.selectedOptionMonths.length,
                        formatType: FormatType.custom,
                        format: '###,###,###',
                        locale: '',
                      )}円/回',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Rounded Mgen plus 2cp',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                FFButtonWidget(
                  onPressed: ((_model.selectedMonths.isNotEmpty) == null)
                      ? null
                      : () async {
                          var shouldSetState = false;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '購入が完了しました（テスト用のため請求は発生していません。）',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          // TsunagariCreateで作成されたAppStateが存在するかを確認。
                          // Local Storageが初期化された場合、AppStateが存在しなくなるため、その場合はTsunagariCreateから再度やり直ししてもらう
                          if (!(FFAppState().temporalTsunagariData != null)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  content:
                                      const Text('セッションの有効期限が切れました。初めからやり直してください。'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('閉じる'),
                                    ),
                                  ],
                                );
                              },
                            );

                            context.goNamed('TsunagariCreate');

                            if (shouldSetState) setState(() {});
                            return;
                          }

                          var tsunagarisRecordReference =
                              TsunagarisRecord.collection.doc();
                          await tsunagarisRecordReference.set({
                            ...createTsunagarisRecordData(
                              name: FFAppState().temporalTsunagariData.name,
                              nameKana:
                                  FFAppState().temporalTsunagariData.nakeKana,
                              nickName:
                                  FFAppState().temporalTsunagariData.nickName,
                              relation:
                                  FFAppState().temporalTsunagariData.relation,
                              deathAnniversary: FFAppState()
                                  .temporalTsunagariData
                                  .deathAnniversary,
                              birthDate:
                                  FFAppState().temporalTsunagariData.birthDate,
                              createdAt:
                                  FFAppState().temporalTsunagariData.createdAt,
                              origin: FFAppState().temporalTsunagariData.origin,
                              locationRef: widget.locationRef,
                              plan: widget.plan,
                              graveRef: widget.graveRef,
                              backImage: FFAppState().defaultTsunagariBGImage,
                              iconImage: FFAppState().defaultTsunagariIcon,
                            ),
                            ...mapToFirestore(
                              {
                                'target_purchases': _model.purchaseDatas,
                                'target_months': _model.selectedMonths,
                                'target_option_months':
                                    _model.selectedOptionMonths,
                              },
                            ),
                          });
                          _model.targetTsunagari =
                              TsunagarisRecord.getDocumentFromData({
                            ...createTsunagarisRecordData(
                              name: FFAppState().temporalTsunagariData.name,
                              nameKana:
                                  FFAppState().temporalTsunagariData.nakeKana,
                              nickName:
                                  FFAppState().temporalTsunagariData.nickName,
                              relation:
                                  FFAppState().temporalTsunagariData.relation,
                              deathAnniversary: FFAppState()
                                  .temporalTsunagariData
                                  .deathAnniversary,
                              birthDate:
                                  FFAppState().temporalTsunagariData.birthDate,
                              createdAt:
                                  FFAppState().temporalTsunagariData.createdAt,
                              origin: FFAppState().temporalTsunagariData.origin,
                              locationRef: widget.locationRef,
                              plan: widget.plan,
                              graveRef: widget.graveRef,
                              backImage: FFAppState().defaultTsunagariBGImage,
                              iconImage: FFAppState().defaultTsunagariIcon,
                            ),
                            ...mapToFirestore(
                              {
                                'target_purchases': _model.purchaseDatas,
                                'target_months': _model.selectedMonths,
                                'target_option_months':
                                    _model.selectedOptionMonths,
                              },
                            ),
                          }, tsunagarisRecordReference);
                          shouldSetState = true;
                          // Locationの中に作成したTsunagariを追加

                          await widget.locationRef!.update({
                            ...mapToFirestore(
                              {
                                'tsunagaris': FieldValue.arrayUnion(
                                    [_model.targetTsunagari?.reference]),
                              },
                            ),
                          });
                          // ユーザー情報の中に作成したTsunagariを追加

                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'tsunagaris': FieldValue.arrayUnion(
                                    [_model.targetTsunagari?.reference]),
                              },
                            ),
                          });
                          _model.locationDoc =
                              await LocationsRecord.getDocumentOnce(
                                  widget.locationRef!);
                          shouldSetState = true;
                          // 上記で読み取ったデータを使って、GraveListPageに表示するためのフィールドを追加

                          await widget.graveRef!.update({
                            ...mapToFirestore(
                              {
                                'tsunagari_location_relations':
                                    FieldValue.arrayUnion([
                                  getTsunagariLocationFirestoreData(
                                    updateTsunagariLocationStruct(
                                      TsunagariLocationStruct(
                                        tsunagari:
                                            _model.targetTsunagari?.nickName,
                                        location: _model.locationDoc?.name,
                                        plan: widget.plan,
                                      ),
                                      clearUnsetFields: false,
                                    ),
                                    true,
                                  )
                                ]),
                              },
                            ),
                          });
                          // selectedMonthの最初の要素に対してループ内の処理を実行する
                          // 処理が完了するごとにselectedMonthからそのデータが削除されていく
                          // 全て削除された段階でループを終了する
                          while (_model.selectedMonths.isNotEmpty) {
                            // 購入に関するデータを新規作成する
                            // 対象月1つにつき1つ作成する

                            var purchasesRecordReference =
                                PurchasesRecord.collection.doc();
                            await purchasesRecordReference
                                .set(createPurchasesRecordData(
                              plan: widget.plan,
                              createdAt: getCurrentTimestamp,
                              purchaseUser: currentUserReference,
                              targetTsunagari:
                                  _model.targetTsunagari?.reference,
                              targetMonth: _model.selectedMonths.first,
                              isUseOption: _model.selectedOptionMonths
                                  .contains(_model.selectedMonths.first),
                              serviceStatus: ExecuteStatus.searchingExecutor,
                            ));
                            _model.purchaseData =
                                PurchasesRecord.getDocumentFromData(
                                    createPurchasesRecordData(
                                      plan: widget.plan,
                                      createdAt: getCurrentTimestamp,
                                      purchaseUser: currentUserReference,
                                      targetTsunagari:
                                          _model.targetTsunagari?.reference,
                                      targetMonth: _model.selectedMonths.first,
                                      isUseOption: _model.selectedOptionMonths
                                          .contains(
                                              _model.selectedMonths.first),
                                      serviceStatus:
                                          ExecuteStatus.searchingExecutor,
                                    ),
                                    purchasesRecordReference);
                            shouldSetState = true;
                            setState(() {
                              _model.addToPurchaseDatas(
                                  _model.purchaseData!.reference);
                            });
                            // 対象としたselectedMonthの要素を削除
                            setState(() {
                              _model.removeFromSelectedMonths(
                                  _model.selectedMonths.first);
                            });
                          }

                          context.goNamed('TsunagariList');

                          if (shouldSetState) setState(() {});
                        },
                  text: 'お支払い方法を選択',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Rounded Mgen plus 2cp',
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(1000.0),
                    disabledColor: const Color(0x4DADE09B),
                    disabledTextColor: const Color(0x4D37542D),
                  ),
                ),
              ].divide(const SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
