import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'tsunagari_edit_model.dart';
export 'tsunagari_edit_model.dart';

class TsunagariEditWidget extends StatefulWidget {
  const TsunagariEditWidget({
    super.key,
    required this.tsunagariDocRef,
  });

  final DocumentReference? tsunagariDocRef;

  @override
  State<TsunagariEditWidget> createState() => _TsunagariEditWidgetState();
}

class _TsunagariEditWidgetState extends State<TsunagariEditWidget> {
  late TsunagariEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TsunagariEditModel());

    _model.familyNameFocusNode ??= FocusNode();

    _model.familyNameKanaFocusNode ??= FocusNode();

    _model.givenNameFocusNode ??= FocusNode();

    _model.givenNameKanaFocusNode ??= FocusNode();

    _model.nickNameFocusNode ??= FocusNode();

    _model.deathAnniversaryYearFocusNode ??= FocusNode();

    _model.deathAnniversaryMonthFocusNode ??= FocusNode();

    _model.deathAnniversaryDayFocusNode ??= FocusNode();

    _model.birthDateYearFocusNode ??= FocusNode();

    _model.birthDateMonthFocusNode ??= FocusNode();

    _model.birthDateDayFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
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
                final containerTsunagarisRecord = snapshot.data!;
                return Container(
                  constraints: const BoxConstraints(
                    maxWidth: 500.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 342.0,
                              height: 60.0,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'ツナガリ情報を編集',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Rounded Mgen plus 2cp',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Container(
                              width: 342.0,
                              height: 40.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: FlutterFlowChoiceChips(
                                  options: const [ChipData('ツナガリ'), ChipData('お墓')],
                                  onChanged: (val) => setState(() => _model
                                      .choiceChipsValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          useGoogleFonts: false,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 0.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            13.0, 5.0, 13.0, 5.0),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0x00000000),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rounded Mgen plus 2cp',
                                          color: const Color(0xFF37542D),
                                          useGoogleFonts: false,
                                        ),
                                    iconColor: const Color(0xFF37542D),
                                    iconSize: 0.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            13.0, 5.0, 13.0, 5.0),
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).accent3,
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 0.0,
                                  multiselect: false,
                                  initialized: _model.choiceChipsValue != null,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    ['ツナガリ'],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'アイコン用画像',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              '画像はあらかじめ正方形に切り取ってからアップロードしてください',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                      Container(
                                        width: 144.0,
                                        height: 144.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 500),
                                          imageUrl: () {
                                            if (_model.uploadedFileUrl1 != '') {
                                              return _model.uploadedFileUrl1;
                                            } else if (containerTsunagarisRecord
                                                        .iconImage !=
                                                    '') {
                                              return containerTsunagarisRecord
                                                  .iconImage;
                                            } else {
                                              return FFAppState()
                                                  .defaultTsunagariIcon;
                                            }
                                          }(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              // データが既にUploadされている場合はそれを削除
                                              // データがUploadされていない場合はアイコンをデフォルトのものに設定する
                                              if (_model.isDataUploading1) {
                                                setState(() {
                                                  _model.isDataUploading1 =
                                                      false;
                                                  _model.uploadedLocalFile1 =
                                                      FFUploadedFile(
                                                          bytes: Uint8List
                                                              .fromList([]));
                                                  _model.uploadedFileUrl1 = '';
                                                });

                                                return;
                                              } else {
                                                // 書き込み量削減のためにConditionを設ける
                                                if (containerTsunagarisRecord
                                                        .iconImage !=
                                                    FFAppState()
                                                        .defaultTsunagariIcon) {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    '設定済みのアイコンを削除してもよろしいですか？'),
                                                                content: const Text(
                                                                    'この操作は元には戻せません。'),
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
                                                                        '削除'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    // アイコンが初期設定のものではなかった場合、アイコンの画像を初期画像に変更する

                                                    await containerTsunagarisRecord
                                                        .reference
                                                        .update(
                                                            createTsunagarisRecordData(
                                                      iconImage: FFAppState()
                                                          .defaultTsunagariIcon,
                                                    ));
                                                    return;
                                                  } else {
                                                    return;
                                                  }
                                                } else {
                                                  return;
                                                }
                                              }
                                            },
                                            text: '削除',
                                            options: FFButtonOptions(
                                              width: 96.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                maxWidth: 144.00,
                                                maxHeight: 144.00,
                                                imageQuality: 30,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading1 = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading1 =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile1 =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl1 =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  setState(() {});
                                                  return;
                                                }
                                              }
                                            },
                                            text: '変更',
                                            options: FFButtonOptions(
                                              width: 96.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'プロフィール画像',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 500),
                                          imageUrl: () {
                                            if (_model.uploadedFileUrl2 != '') {
                                              return _model.uploadedFileUrl2;
                                            } else if (containerTsunagarisRecord
                                                        .backImage !=
                                                    '') {
                                              return containerTsunagarisRecord
                                                  .backImage;
                                            } else {
                                              return FFAppState()
                                                  .defaultTsunagariBGImage;
                                            }
                                          }(),
                                          width: 128.0,
                                          height: 277.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              // データが既にUploadされている場合はそれを削除
                                              // データがUploadされていない場合はアイコンをデフォルトのものに設定する
                                              if (_model.isDataUploading2) {
                                                setState(() {
                                                  _model.isDataUploading2 =
                                                      false;
                                                  _model.uploadedLocalFile2 =
                                                      FFUploadedFile(
                                                          bytes: Uint8List
                                                              .fromList([]));
                                                  _model.uploadedFileUrl2 = '';
                                                });

                                                return;
                                              } else {
                                                // 書き込み量削減のためにConditionを設ける
                                                if (containerTsunagarisRecord
                                                        .backImage !=
                                                    FFAppState()
                                                        .defaultTsunagariBGImage) {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    '設定済みの背景画像を削除してもよろしいですか？'),
                                                                content: const Text(
                                                                    'この操作は元には戻せません。'),
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
                                                                        '削除'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    // アイコンが初期設定のものではなかった場合、アイコンの画像を初期画像に変更する

                                                    await containerTsunagarisRecord
                                                        .reference
                                                        .update(
                                                            createTsunagarisRecordData(
                                                      backImage: FFAppState()
                                                          .defaultTsunagariBGImage,
                                                    ));
                                                    return;
                                                  } else {
                                                    return;
                                                  }
                                                } else {
                                                  return;
                                                }
                                              }
                                            },
                                            text: '削除',
                                            options: FFButtonOptions(
                                              width: 96.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                imageQuality: 70,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading2 = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading2 =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile2 =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl2 =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  setState(() {});
                                                  return;
                                                }
                                              }
                                            },
                                            text: '変更',
                                            options: FFButtonOptions(
                                              width: 96.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(1000.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '姓 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.familyNameController ??=
                                                TextEditingController(
                                          text: functions
                                              .devideBySpace(
                                                  containerTsunagarisRecord
                                                      .name)
                                              .first,
                                        ),
                                        focusNode: _model.familyNameFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.familyNameController',
                                          const Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: '鈴木',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          suffixIcon: _model
                                                  .familyNameController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.familyNameController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 16.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .familyNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '姓(かな) *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.familyNameKanaController ??=
                                                TextEditingController(
                                          text: functions
                                              .devideBySpace(
                                                  containerTsunagarisRecord
                                                      .nameKana)
                                              .first,
                                        ),
                                        focusNode:
                                            _model.familyNameKanaFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.familyNameKanaController',
                                          const Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: 'すずき',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          suffixIcon: _model
                                                  .familyNameKanaController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .familyNameKanaController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 16.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .familyNameKanaControllerValidator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '名 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.givenNameController ??=
                                                TextEditingController(
                                          text: functions
                                              .devideBySpace(
                                                  containerTsunagarisRecord
                                                      .name)
                                              .last,
                                        ),
                                        focusNode: _model.givenNameFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.givenNameController',
                                          const Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: '花子',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          suffixIcon: _model
                                                  .givenNameController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.givenNameController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 16.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .givenNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '名(かな) *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.givenNameKanaController ??=
                                                TextEditingController(
                                          text: functions
                                              .devideBySpace(
                                                  containerTsunagarisRecord
                                                      .nameKana)
                                              .last,
                                        ),
                                        focusNode:
                                            _model.givenNameKanaFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.givenNameKanaController',
                                          const Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: 'はなこ',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          suffixIcon: _model
                                                  .givenNameKanaController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .givenNameKanaController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 16.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .givenNameKanaControllerValidator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '関係性 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller:
                                            _model.relationsValueController ??=
                                                FormFieldController<String>(
                                          _model.relationsValue ??=
                                              containerTsunagarisRecord
                                                  .relation,
                                        ),
                                        options: const [
                                          '祖父',
                                          '祖母',
                                          '父',
                                          '母',
                                          '兄弟',
                                          '姉妹',
                                          '子',
                                          'ペット'
                                        ],
                                        onChanged: (val) => setState(
                                            () => _model.relationsValue = val),
                                        width: double.infinity,
                                        height: 48.0,
                                        maxHeight: 416.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: '関係性を選択',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 16.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 0.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0.0,
                                        borderRadius: 12.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 16.0, 8.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '呼び名 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.nickNameController ??=
                                                TextEditingController(
                                          text: containerTsunagarisRecord
                                              .nickName,
                                        ),
                                        focusNode: _model.nickNameFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.nickNameController',
                                          const Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: '例：おじいちゃん、ばぁば',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Rounded Mgen plus 2cp',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          suffixIcon: _model.nickNameController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.nickNameController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 16.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Rounded Mgen plus 2cp',
                                              fontSize: 16.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .nickNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '父方・母方 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 4.0),
                                          child: Container(
                                            height: 40.0,
                                            decoration: const BoxDecoration(),
                                            child: FlutterFlowChoiceChips(
                                              options: const [
                                                ChipData('父方'),
                                                ChipData('母方')
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.originChoiceValue =
                                                      val?.firstOrNull),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          useGoogleFonts: false,
                                                        ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 0.0,
                                                labelPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(13.0, 5.0,
                                                            13.0, 5.0),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1000.0),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    const Color(0x00000000),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color:
                                                              const Color(0xFF37542D),
                                                          useGoogleFonts: false,
                                                        ),
                                                iconColor: const Color(0xFF37542D),
                                                iconSize: 0.0,
                                                labelPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(13.0, 5.0,
                                                            13.0, 5.0),
                                                elevation: 0.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                borderWidth: 1.0,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1000.0),
                                              ),
                                              chipSpacing: 8.0,
                                              rowSpacing: 0.0,
                                              multiselect: false,
                                              initialized:
                                                  _model.originChoiceValue !=
                                                      null,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                      .originChoiceValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [
                                                  containerTsunagarisRecord
                                                      .origin
                                                ],
                                              ),
                                              wrapped: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '命日 *',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 4.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() {
                                                    _model.selectedWareki1 =
                                                        null;
                                                  });
                                                  setState(() {
                                                    _model
                                                        .warekiDropdownValueController
                                                        ?.reset();
                                                  });
                                                },
                                                text: '西暦',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 8.0, 16.0, 8.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color:
                                                      _model.selectedWareki1 ==
                                                                  null ||
                                                              _model.selectedWareki1 ==
                                                                  ''
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4
                                                          : const Color(0x00000000),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: _model
                                                                    .selectedWareki1 ==
                                                                null ||
                                                            _model.selectedWareki1 ==
                                                                ''
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .accent4
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1000.0),
                                                ),
                                                showLoadingIndicator: false,
                                              ),
                                            ),
                                            Flexible(
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .warekiDropdownValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  '明治',
                                                  '大正',
                                                  '昭和',
                                                  '平成',
                                                  '令和'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                          .warekiDropdownValue =
                                                      val);
                                                  setState(() {
                                                    _model.selectedWareki1 =
                                                        _model
                                                            .warekiDropdownValue;
                                                  });
                                                  setState(() {
                                                    _model
                                                        .deathAnniversaryYearController
                                                        ?.text = dateTimeFormat(
                                                      'yyyy',
                                                      containerTsunagarisRecord
                                                          .deathAnniversary!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  });
                                                },
                                                width: 81.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: '和暦',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                                fillColor: _model
                                                                .selectedWareki1 !=
                                                            null &&
                                                        _model.selectedWareki1 !=
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .accent4
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                elevation: 0.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                borderWidth: 1.0,
                                                borderRadius: 1000.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 8.0)),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (_model.selectedWareki1 !=
                                                      null &&
                                                  _model.selectedWareki1 != '')
                                                Text(
                                                  valueOrDefault<String>(
                                                    _model.selectedWareki1,
                                                    '令和',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              Container(
                                                width: 44.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .deathAnniversaryYearController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'yyyy',
                                                      containerTsunagarisRecord
                                                          .deathAnniversary,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .deathAnniversaryYearFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.deathAnniversaryYearController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText:
                                                        _model.selectedWareki1 !=
                                                                    null &&
                                                                _model.selectedWareki1 !=
                                                                    ''
                                                            ? '1'
                                                            : '1950',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .deathAnniversaryYearControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '年',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Container(
                                                width: 28.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .deathAnniversaryMonthController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'MM',
                                                      containerTsunagarisRecord
                                                          .deathAnniversary,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .deathAnniversaryMonthFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.deathAnniversaryMonthController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText: '1',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .deathAnniversaryMonthControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '月',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Container(
                                                width: 28.0,
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .deathAnniversaryDayController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'dd',
                                                      containerTsunagarisRecord
                                                          .deathAnniversary,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .deathAnniversaryDayFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.deathAnniversaryDayController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText: '1',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .deathAnniversaryDayControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '日',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          child: Text(
                                            '生年月日',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 4.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() {
                                                    _model.selectedWareki2 =
                                                        null;
                                                  });
                                                  setState(() {
                                                    _model
                                                        .warekiDropdown2ValueController
                                                        ?.reset();
                                                  });
                                                },
                                                text: '西暦',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 8.0, 16.0, 8.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color:
                                                      _model.selectedWareki2 ==
                                                                  null ||
                                                              _model.selectedWareki2 ==
                                                                  ''
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4
                                                          : const Color(0x00000000),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: _model
                                                                    .selectedWareki2 ==
                                                                null ||
                                                            _model.selectedWareki2 ==
                                                                ''
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .accent4
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1000.0),
                                                ),
                                                showLoadingIndicator: false,
                                              ),
                                            ),
                                            Flexible(
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .warekiDropdown2ValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  '明治',
                                                  '大正',
                                                  '昭和',
                                                  '平成',
                                                  '令和'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                          .warekiDropdown2Value =
                                                      val);
                                                  setState(() {
                                                    _model.selectedWareki2 =
                                                        _model
                                                            .warekiDropdown2Value;
                                                  });
                                                  setState(() {
                                                    _model
                                                        .birthDateYearController
                                                        ?.text = dateTimeFormat(
                                                      'yyyy',
                                                      containerTsunagarisRecord
                                                          .birthDate!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  });
                                                },
                                                width: 81.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: '和暦',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                                fillColor: _model
                                                                .selectedWareki2 !=
                                                            null &&
                                                        _model.selectedWareki2 !=
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .accent4
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                elevation: 0.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                borderWidth: 1.0,
                                                borderRadius: 1000.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 8.0)),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (_model.selectedWareki2 !=
                                                      null &&
                                                  _model.selectedWareki2 != '')
                                                Text(
                                                  valueOrDefault<String>(
                                                    _model.selectedWareki2,
                                                    '令和',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              SizedBox(
                                                width: 46.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .birthDateYearController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'yyyy',
                                                      containerTsunagarisRecord
                                                          .birthDate,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .birthDateYearFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.birthDateYearController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText:
                                                        _model.selectedWareki2 !=
                                                                    null &&
                                                                _model.selectedWareki2 !=
                                                                    ''
                                                            ? '1'
                                                            : '1950',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  maxLength:
                                                      _model.selectedWareki2 !=
                                                                  null &&
                                                              _model.selectedWareki2 !=
                                                                  ''
                                                          ? 2
                                                          : 4,
                                                  buildCounter: (context,
                                                          {required currentLength,
                                                          required isFocused,
                                                          maxLength}) =>
                                                      null,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .birthDateYearControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '年',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              SizedBox(
                                                width: 22.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .birthDateMonthController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'MM',
                                                      containerTsunagarisRecord
                                                          .birthDate,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .birthDateMonthFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.birthDateMonthController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText: '1',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .birthDateMonthControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '月',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              SizedBox(
                                                width: 22.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .birthDateDayController ??=
                                                      TextEditingController(
                                                    text: dateTimeFormat(
                                                      'dd',
                                                      containerTsunagarisRecord
                                                          .birthDate,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .birthDateDayFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.birthDateDayController',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    hintText: '1',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Rounded Mgen plus 2cp',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Rounded Mgen plus 2cp',
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .birthDateDayControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                '日',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ].divide(const SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: !((_model.familyNameController.text !=
                                            '') &&
                                    (_model.familyNameKanaController.text !=
                                            '') &&
                                    (_model.givenNameController.text !=
                                            '') &&
                                    (_model.givenNameKanaController.text !=
                                            '') &&
                                    (_model.relationsValue != null &&
                                        _model.relationsValue != '') &&
                                    (_model.deathAnniversaryYearController.text !=
                                            '') &&
                                    (_model.deathAnniversaryMonthController
                                                .text !=
                                            '') &&
                                    (_model.deathAnniversaryDayController
                                                .text !=
                                            '') &&
                                    (_model.originChoiceValue != null &&
                                        _model.originChoiceValue != ''))
                                ? null
                                : () async {
                                    await widget.tsunagariDocRef!
                                        .update(createTsunagarisRecordData(
                                      name:
                                          '${_model.familyNameController.text} ${_model.givenNameController.text}',
                                      nameKana:
                                          '${_model.familyNameKanaController.text} ${_model.givenNameKanaController.text}',
                                      nickName: _model.nickNameController.text,
                                      relation: _model.relationsValue,
                                      deathAnniversary: functions.convertEraToDate(
                                          _model.selectedWareki1,
                                          int.parse(_model
                                              .deathAnniversaryYearController
                                              .text),
                                          int.parse(_model
                                              .deathAnniversaryMonthController
                                              .text),
                                          int.parse(_model
                                              .deathAnniversaryDayController
                                              .text)),
                                      birthDate: (_model.birthDateYearController
                                                          .text !=
                                                      '') &&
                                              (_model.birthDateMonthController
                                                          .text !=
                                                      '') &&
                                              (_model.birthDateDayController.text !=
                                                      '')
                                          ? functions.convertEraToDate(
                                              _model.warekiDropdown2Value,
                                              int.parse(_model.birthDateYearController.text),
                                              int.parse(_model.birthDateMonthController.text),
                                              int.parse(_model.birthDateDayController.text))
                                          : null,
                                      origin: _model.originChoiceValue,
                                      iconImage: _model.isDataUploading1
                                          ? _model.uploadedFileUrl1
                                          : FFAppState().defaultTsunagariIcon,
                                      backImage: _model.isDataUploading2
                                          ? _model.uploadedFileUrl2
                                          : FFAppState()
                                              .defaultTsunagariBGImage,
                                    ));
                                    context.safePop();
                                  },
                            text: '変更を保存',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
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
                            showLoadingIndicator: false,
                          ),
                        ]
                            .divide(const SizedBox(height: 24.0))
                            .addToStart(const SizedBox(height: 24.0))
                            .addToEnd(const SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
